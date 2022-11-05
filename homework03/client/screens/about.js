import React from 'react';
import {  Text } from 'react-native';
import { globalStyles } from '../styles/global';

export default function AboutScreen({ navigation }) {
    //about information

    return (
        <Text style={ globalStyles.aboutinfo } >{"This application acesses information on Monopoly players."}</Text>
    );
};