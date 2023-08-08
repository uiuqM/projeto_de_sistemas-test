import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";

import Home from "../screens/Home/Home.js";

const Tab = createBottomTabNavigator();

export function MainRoute() {
  return (
    <NavigationContainer>
      <Tab.Navigator initialRouteName="Home">
        <Tab.Screen name="Home" component={Home}></Tab.Screen>
      </Tab.Navigator>
    </NavigationContainer>
  );
}
