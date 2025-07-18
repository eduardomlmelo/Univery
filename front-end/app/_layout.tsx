import { useEffect } from 'react';
import { Stack } from 'expo-router';
import { StatusBar } from 'expo-status-bar';
import { useFrameworkReady } from '@/hooks/useFrameworkReady';

export default function RootLayout() {
  useFrameworkReady();

  return (
    <>
      <Stack initialRouteName='index' screenOptions={{ headerShown: false }}>
        <Stack.Screen name="index" />
        <Stack.Screen name="(cliente)" />
        <Stack.Screen name="(entregador)" />
        <Stack.Screen name="cliente/local/local-home" />
        <Stack.Screen name="cliente/local/local-selecionado" />
        <Stack.Screen name="+not-found" />
      </Stack>
      <StatusBar style="auto" />
    </>
  );
}
