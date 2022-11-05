import React from 'react';
import { TouchableOpacity, View, Text } from 'react-native';

import { globalStyles } from '../styles/global';

// removed about button and added header about button
export default function Header({ navigation }) {
    return (
        <View>
            <TouchableOpacity onPress={() => navigation.navigate('About')}>
                <Text style={globalStyles.about}>?</Text>
            </TouchableOpacity>
        </View>
    );
};