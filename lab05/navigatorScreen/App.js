/*
  Seong Chan cho (sc77)
  lab05: Seperating screen files on previous lab(4)
  CS262: Prof. Keith VanderLinden
*/
import React, { useState } from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import HomeScreen from './screens/home';
import DetailsScreen from './screens/details';
import AboutScreen from './screens/about';


const Stack = createNativeStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="home">
        <Stack.Screen name="home" component={HomeScreen} />
        <Stack.Screen name="about" component={AboutScreen} />
        <Stack.Screen name="details" component={DetailsScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
