import { FirebaseApp, initializeApp } from 'firebase/app';
import {getAuth, onAuthStateChanged} from 'firebase/auth';
import {getFirestore} from 'firebase/firestore';

const firebaseConfig = {
    apiKey: "AIzaSyBHPZMUdjyw--Slpfr-njs8zBhbiJKKIUQ",
    authDomain: "todoapp-aed0e.firebaseapp.com",
    projectId: "todoapp-aed0e",
    storageBucket: "todoapp-aed0e.firebasestorage.app",
    messagingSenderId: "313516255240",
    appId: "1:313516255240:web:f5ea4c9585888dde0d89bd",
    measurementId: "G-V166TW85SL"
};

export const FIREBASE_APP = initializeApp(firebaseConfig);
export const FIRESTORE_DB = getFirestore(FIREBASE_APP);
export const FIREBASE_AUTH = getAuth(FIREBASE_APP);
