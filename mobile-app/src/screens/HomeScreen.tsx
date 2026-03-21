import React from 'react';
import { View, Text, StyleSheet, TouchableOpacity, ScrollView, SafeAreaView } from 'react-native';
import { theme } from '../theme/theme';
import { Database, Zap, Calculator, ChevronRight } from 'lucide-react-native';

export const HomeScreen = ({ navigation }: any) => {
  return (
    <SafeAreaView style={styles.container}>
      <ScrollView contentContainerStyle={styles.scrollContent}>
        <View style={styles.header}>
          <Text style={styles.brand}>MINMAX<Text style={{ color: theme.colors.primary }}>MUSCLE</Text></Text>
          <Text style={styles.subtitle}>Peak Human Performance</Text>
        </View>

        <View style={styles.menuGrid}>
          <MenuCard 
            title="PEPTIDES" 
            subtitle="RESEARCH DATABASE" 
            icon={<Database color={theme.colors.primary} size={32} />}
            onPress={() => navigation.navigate('PeptideList')}
          />
          <MenuCard 
            title="STACKS" 
            subtitle="PROTOCOL SYNERGY" 
            icon={<Zap color={theme.colors.primary} size={32} />}
            onPress={() => navigation.navigate('StackList')}
          />
          <MenuCard 
            title="CALCULATORS" 
            subtitle="CLINICAL TOOLS" 
            icon={<Calculator color={theme.colors.primary} size={32} />}
            onPress={() => navigation.navigate('Calculators')}
          />
        </View>

        <View style={styles.disclaimerBox}>
          <Text style={styles.disclaimerText}>
            RESEARCH PURPOSES ONLY. Not for human consumption.
          </Text>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
};

const MenuCard = ({ title, subtitle, icon, onPress }: any) => (
  <TouchableOpacity style={styles.card} onPress={onPress}>
    <View style={styles.cardContent}>
      <View style={styles.iconBox}>{icon}</View>
      <View style={styles.textBox}>
        <Text style={styles.cardTitle}>{title}</Text>
        <Text style={styles.cardSubtitle}>{subtitle}</Text>
      </View>
      <ChevronRight color={theme.colors.textSecondary} size={20} />
    </View>
  </TouchableOpacity>
);

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: theme.colors.background,
  },
  scrollContent: {
    padding: 20,
    paddingTop: 40,
  },
  header: {
    marginBottom: 40,
  },
  brand: {
    fontSize: 42,
    color: '#fff',
    fontFamily: theme.fonts.heading,
    fontStyle: 'italic',
    letterSpacing: -2,
  },
  subtitle: {
    fontSize: 14,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.body,
    letterSpacing: 2,
    marginTop: -5,
  },
  menuGrid: {
    gap: 16,
  },
  card: {
    backgroundColor: theme.colors.surface,
    borderRadius: 20,
    padding: 24,
    borderWidth: 1,
    borderColor: theme.colors.border,
  },
  cardContent: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  iconBox: {
    width: 56,
    height: 56,
    borderRadius: 16,
    backgroundColor: 'rgba(37, 99, 235, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 20,
  },
  textBox: {
    flex: 1,
  },
  cardTitle: {
    fontSize: 24,
    color: '#fff',
    fontFamily: theme.fonts.heading,
    fontStyle: 'italic',
  },
  cardSubtitle: {
    fontSize: 10,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.body,
    letterSpacing: 1,
  },
  disclaimerBox: {
    marginTop: 60,
    padding: 20,
    borderRadius: 16,
    backgroundColor: 'rgba(255, 255, 255, 0.02)',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.05)',
  },
  disclaimerText: {
    fontSize: 10,
    color: theme.colors.textSecondary,
    textAlign: 'center',
    fontFamily: theme.fonts.body,
    lineHeight: 16,
  }
});
