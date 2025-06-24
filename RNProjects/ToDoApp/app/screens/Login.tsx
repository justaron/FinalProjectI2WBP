 import { View, Text, Button, TextInput,StyleSheet} from 'react-native'
 import React, { useState } from 'react'
import { createUserWithEmailAndPassword, getAuth, signInWithEmailAndPassword, signOut } from 'firebase/auth';
 
 const Login = () => {
     const [email, setEmail] = useState('');
     const [password, setPassword] = useState('');
     const auth =getAuth();

    const signUp = async()=>{
      const after = await  createUserWithEmailAndPassword(auth, email, password);
      await signOut(auth);
      alert('You Have Successfully Signed Up!'); 
    };

    const signIn = async () => {
        try {
          await signInWithEmailAndPassword(auth, email, password);
          alert('You Have Successfully Logged In!');
        } catch (error: any) {
          alert('Login Failed: ' + error.message);
        }
      };

   return (
     <View style={styles.container}>
       <TextInput style={styles.input} placeholder='Email' onChangeText={(text: string)=>setEmail(text)} value={email} />
       <TextInput style={styles.input} placeholder='Password' onChangeText={(text: string)=>setPassword(text)} value={password} />
        <Button onPress={signUp} title="Sign up"/>
        <Button onPress={signIn} title="Sign in"/>
     </View>
   )
 }
 
 export default Login

 const styles=StyleSheet.create({
    container: {
        marginHorizontal:20,
        flexDirection:'column',
        paddingVertical:20,
      },
      form: {
        marginVertical:20,
        flexDirection:'row',
        alignItems:'center',
      },
      input: {
        marginVertical:5,
        height:50,
        borderWidth:1,
        borderRadius:4,
        padding:10,
        backgroundColor: '#FFFFFF',
      },
      
 });