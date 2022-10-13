import React from 'react';
import { View, Text } from 'react-native';
import { globalStyles } from '../styles/global';

export default function DetailsScreen({ route }) {
  
    return (
        <View style={globalStyles.container}>
            <Text style={{fontWeight: 'bold', fontsize: '16'}}>{ route.params.emailaddress }</Text>
            <Text>ID: { route.params.id }</Text>
            <Text>Aka: { route.params.name }</Text>
        </View>
    );
};