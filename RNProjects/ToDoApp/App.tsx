import { createNativeStackNavigator } from '@react-navigation/native-stack';
import { NavigationContainer } from '@react-navigation/native';
import List from './app/screens/List';
import Details from './app/screens/Details';
import Login from './app/screens/Login';
import { useEffect, useState } from 'react';
import { getAuth, onAuthStateChanged } from 'firebase/auth';

const Stack = createNativeStackNavigator();


export default function App() {
  const [authenticated, setAuthenticated] = useState(false)
  const auth = getAuth();

  useEffect(() => {
    const unsubscribe = onAuthStateChanged(auth, (user) => {
      if (user) {
        setAuthenticated(true);
      } else {
        setAuthenticated(false);
      }
    });

    return () => unsubscribe(); // Bellek sızıntısını önlemek için aboneliği kaldır
  }, []);
  
  return (
    
   <NavigationContainer>
      <Stack.Navigator initialRouteName={authenticated ? 'List' : 'Login'}>
        {!authenticated ? (
          <Stack.Screen name="Login" component={Login}/>
        ):(
          <Stack.Screen name="My List" component={List}/>
        )}
        

      </Stack.Navigator>
   </NavigationContainer>
  );
}


