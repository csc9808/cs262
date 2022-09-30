import React, { useState } from 'react';
import { Button, View, StyleSheet, Text, TouchableOpacity, FlatList } from 'react-native';
import { globalStyles } from '../styles/global';

// this is the homepage structure and datas needed for details on moveis
export default function HomeScreen({ navigation }) {
    /* Hardcode a "database"/list of movies. */
    const [reviews, setReviews] = useState([
        {
            title: "Fellowship of the Ring", rating: 8.8, key: '1',
            description: "Some hobbits begin a quest. It is very good. "
        },
        {
            title: "Two Towers", rating: 8.7, key: '2',
            description: 'Some dark lords try to take over the world.'
        },
        {
            title: "Return of the King", rating: 8.9, key: '3',
            description: 'The dark lords are defeated, to much rejoicing.'
        },

    ]);

    return (
        <View style={globalStyles.container}>
            {/* Get rid of that ugly button and, instead, display our list of movies. */}
            <FlatList data={reviews} renderItem={({ item }) => (
                <TouchableOpacity onPress={() => navigation.navigate('details', item)}>
                    <Text style={globalStyles.title}>{item.title}</Text>
                </TouchableOpacity>
            )} />
            <Button
                onPress={() => navigation.navigate('about')}
                title="About this App"
                color="blue"
            />
        </View>

    );

} //end of HomeScreen