import { Tabs } from 'expo-router';
import { ChefHat, ClipboardList, Building2 } from 'lucide-react-native';
import { StyleSheet } from 'react-native';
import { SafeAreaView, useSafeAreaInsets } from 'react-native-safe-area-context';

export default function VendedorTabLayout() {
  return (
    <SafeAreaView style={styles.screenInfo}>
      <Tabs
        screenOptions={{
          headerShown: false,
          tabBarActiveTintColor: '#F59E0B',
          tabBarInactiveTintColor: '#9CA3AF',
          tabBarStyle: {
            backgroundColor: '#FFFFFF',
            borderTopWidth: 1,
            borderTopColor: '#E5E7EB',
            paddingTop: 8,
            paddingBottom: 8,
            height: 70,
          },
          tabBarLabelStyle: {
            fontSize: 12,
            fontWeight: '500',
            marginTop: 4,
          },
        }}>
        <Tabs.Screen
          name="index"
          options={{
            title: 'Painel',
            tabBarIcon: ({ size, color }) => (
              <ChefHat size={size} color={color} />
            ),
          }}
        />
        <Tabs.Screen
          name="orders"
          options={{
            title: 'Pedidos',
            tabBarIcon: ({ size, color }) => (
              <ClipboardList size={size} color={color} />
            ),
          }}
        />
        <Tabs.Screen
          name="business"
          options={{
            title: 'Negócio',
            tabBarIcon: ({ size, color }) => (
              <Building2 size={size} color={color} />
            ),
          }}
        />
        <Tabs.Screen
          name="detalhes"
          options={{
            href: null, 
          }}
        />
      </Tabs>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
   screenInfo:{
    flex: 1,
    backgroundColor: 'FFFFFF' 
   },
});