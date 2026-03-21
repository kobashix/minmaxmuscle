import React from 'react';
import { StatusBar } from 'expo-status-bar';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import { useFonts, Inter_400Regular, Inter_700Bold } from '@expo-google-fonts/inter';
import { Outfit_900Black } from '@expo-google-fonts/outfit';
import { theme } from './src/theme/theme';

import { HomeScreen } from './src/screens/HomeScreen';
import { PeptideListScreen } from './src/screens/PeptideListScreen';
import { PeptideDetailScreen } from './src/screens/PeptideDetailScreen';
import { StackListScreen } from './src/screens/StackListScreen';
import { StackDetailScreen } from './src/screens/StackDetailScreen';
import { CalculatorScreen } from './src/screens/CalculatorScreen';

const Stack = createNativeStackNavigator();

export default function App() {
  const [fontsLoaded] = useFonts({
    Inter_400Regular,
    Inter_700Bold,
    Outfit_900Black,
  });

  if (!fontsLoaded) return null;

  return (
    <NavigationContainer>
      <Stack.Navigator
        screenOptions={{
          headerStyle: { backgroundColor: theme.colors.background },
          headerTintColor: '#fff',
          headerTitleStyle: { fontFamily: theme.fonts.heading, fontStyle: 'italic' },
          headerShadowVisible: false,
          headerBackTitleVisible: false,
          contentStyle: { backgroundColor: theme.colors.background }
        }}
      >
        <Stack.Screen name="Home" component={HomeScreen} options={{ headerShown: false }} />
        <Stack.Screen name="PeptideList" component={PeptideListScreen} options={{ title: 'PEPTIDE DATABASE' }} />
        <Stack.Screen name="PeptideDetail" component={PeptideDetailScreen} options={{ title: 'DOSSIER' }} />
        <Stack.Screen name="StackList" component={StackListScreen} options={{ title: 'PROTOCOL STACKS' }} />
        <Stack.Screen name="StackDetail" component={StackDetailScreen} options={{ title: 'PROTOCOL' }} />
        <Stack.Screen name="Calculators" component={CalculatorScreen} options={{ title: 'CLINICAL TOOLS' }} />
      </Stack.Navigator>
      <StatusBar style="light" />
    </NavigationContainer>
  );
}
