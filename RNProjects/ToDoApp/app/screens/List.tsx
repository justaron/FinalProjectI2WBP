import { View, Text, Button, TextInput, FlatList, TouchableOpacity } from 'react-native'
import React, { useEffect, useState } from 'react'
import { FIRESTORE_DB } from '../../firebaseConfig';
import { addDoc, collection, deleteDoc, doc, onSnapshot, updateDoc } from 'firebase/firestore';
import { StyleSheet } from 'react-native';
import Ionicons from '@expo/vector-icons/Ionicons'; 
import {Entypo} from '@expo/vector-icons';
import AntDesign from '@expo/vector-icons/AntDesign';
import { getAuth, signOut } from 'firebase/auth';
import { useNavigation } from '@react-navigation/native';

export interface Todo{
  title: string;
  done:boolean;
  id:string;
};

const List = ({navigation}: any) => {
  const [todos, SetTodos] = useState<Todo[]>([]);
  const [todo, SetTodo] = useState('');

  useEffect(()=> {
    const todoRef = collection(FIRESTORE_DB, 'todos')

    const subscriber = onSnapshot(todoRef,{
      next:(snapshot) => {
        console.log('UPDATED');

        const todos: Todo[] = [];
        snapshot.docs.forEach(doc =>{
          todos.push({
            id:doc.id,
            ...doc.data()
          } as Todo)
        });
        SetTodos(todos); 
      },
    });

    return() => subscriber();
  }, []);
  
  const addTodo = async () =>{
    const doc= await addDoc(collection(FIRESTORE_DB, 'todos'),{title: todo, done: false});
    SetTodo('');
  };

  const renderTodo = ({item}:any) => {
    const ref = doc(FIRESTORE_DB, `todos/${item.id}`);
    const toggleDone = async() => {
      await updateDoc(ref, {done:!item.done});
    };

    const deleteItem = async() => {
      await deleteDoc(ref);      
     };


    return(
      <View style={styles.todoContainer}>
        <TouchableOpacity onPress={toggleDone} style={styles.todo}>
          {item.done && <Ionicons name="checkmark-circle-sharp" size={32} color="green" />}
          {!item.done && <Entypo name = "circle" size={32} color="green"/>}
          <Text style={styles.todoText}>{item.title}</Text>
        </TouchableOpacity>
        <Ionicons name="trash-bin-outline" size={25} color="red" onPress={deleteItem}/>
      </View>
    )
  };

  return (
    <View style={styles.container}>
      <View style={styles.form}>
        <TextInput style={styles.input} placeholder='Add New ToDo' onChangeText={(text: string)=>SetTodo(text)} value={todo} />
        <Button onPress={addTodo} title="Add To Do" disabled={todo === ''} />
      </View>
      {todos.length > 0 && (
        <View>
          <FlatList data={todos} renderItem={(item)=>renderTodo(item)} keyExtractor={(todo: Todo) => todo.id}/>
        </View>
      )}
      
    </View>
  )
};

export default List

const styles = StyleSheet.create({
  container: {
    marginHorizontal:20,
  },
  form: {
    marginVertical:20,
    flexDirection:'row',
    alignItems:'center',
  },
  input: {
    flex:1,
    height:40,
    borderWidth:1,
    borderRadius:4,
    padding:10,
    backgroundColor: '#FFFFFF',
  },
  todoContainer:{
    flexDirection:'row',
    alignItems:'center',
    backgroundColor:'#DFD691',
    padding:10,
    marginVertical:5,
    borderWidth:1,
    borderRadius:10,
  },
  todoText:{
    flex:1,
    paddingHorizontal:5,
  },
  todo:{
    flex:1,
    flexDirection:'row',
    alignItems:'center',
  },
});
const navigation = useNavigation();

const handleSignOut = async () => {
  const auth = getAuth();
  try {
    await signOut(auth);
    navigation.replace('Login'); // Giriş ekranına yönlendir
  } catch (error) {
    console.error('Çıkış yapılırken hata:', error);
  }
};
