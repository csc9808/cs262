import React, { useEffect, useState } from 'react';
import { ActivityIndicator, View, Text, TouchableOpacity, FlatList } from 'react-native';
import { globalStyles } from '../styles/global';
import Card from '../shared/card';

export default function PlayerScreen({ navigation }) {
    /* Hardcode a "database"/list of Players. */
    const [isLoading, setLoading] = useState(true);
    const [data, setData] = useState([]);

    useEffect(() => {
        fetch('https://calm-hollows-57574.herokuapp.com/playerGame')
            .then((response) => response.json())
            .then((json) => setData(json))
            .catch((error) => console.error(error))
            .finally(() => setLoading(false));
    }, []);

    return (
        <View style={globalStyles.container}>
          {isLoading ? <ActivityIndicator/> : (
              <FlatList
                  data={data}
                  keyExtractor={({ score }, index) => score.toString()}
                  renderItem={({ item }) => (
                    <TouchableOpacity onPress={() => navigation.navigate('Details', item)}>
                    <Card>
                    <Text style={globalStyles.titleText}>{item.score}</Text>
                    </Card>
                    </TouchableOpacity>
                  )}
              />
          )}
        </View>
    );
};