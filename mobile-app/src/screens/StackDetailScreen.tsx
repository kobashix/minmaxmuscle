import React from 'react';
import { View, Text, StyleSheet, ScrollView, SafeAreaView } from 'react-native';
import { theme } from '../theme/theme';
import { Info, Target, FlaskConical } from 'lucide-react-native';

export const StackDetailScreen = ({ route }: any) => {
  const { stack } = route.params;

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView contentContainerStyle={styles.scrollContent}>
        <View style={styles.header}>
          <Text style={styles.goal}>{stack.goal}</Text>
          <Text style={styles.title}>{stack.stack_name}</Text>
        </View>

        <View style={styles.section}>
          <View style={styles.sectionHeader}>
            <Info color={theme.colors.primary} size={18} />
            <Text style={styles.sectionTitle}>PROTOCOL OVERVIEW</Text>
          </View>
          <View style={styles.glassCard}>
            <Text style={styles.bodyText}>{stack.description}</Text>
          </View>
        </View>

        <View style={styles.section}>
          <View style={styles.sectionHeader}>
            <FlaskConical color={theme.colors.primary} size={18} />
            <Text style={styles.sectionTitle}>AUTHORITATIVE DOSAGES</Text>
          </View>
          {stack.component_list.map((item: any, index: number) => (
            <View key={index} style={[styles.glassCard, { marginBottom: 12 }]}>
              <View style={styles.dosageHeader}>
                <Text style={styles.peptideName}>{item.name}</Text>
              </View>
              <Text style={styles.dosageValue}>{item.dosage}</Text>
            </View>
          ))}
        </View>

        <View style={styles.disclaimerBox}>
          <Text style={styles.disclaimerText}>
            Stacks represent theoretical synergies based on published research. Individual biochemistry varies significantly.
          </Text>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: theme.colors.background,
  },
  scrollContent: {
    padding: 20,
    paddingBottom: 40,
  },
  header: {
    marginBottom: 30,
  },
  goal: {
    fontSize: 12,
    color: theme.colors.primary,
    fontFamily: theme.fonts.bodyBold,
    letterSpacing: 2,
    marginBottom: 4,
    textTransform: 'uppercase',
  },
  title: {
    fontSize: 36,
    color: '#fff',
    fontFamily: theme.fonts.heading,
    fontStyle: 'italic',
  },
  section: {
    marginBottom: 30,
  },
  sectionHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
    gap: 8,
  },
  sectionTitle: {
    fontSize: 12,
    color: '#fff',
    fontFamily: theme.fonts.heading,
    letterSpacing: 1,
  },
  glassCard: {
    backgroundColor: theme.colors.surface,
    borderRadius: 20,
    padding: 24,
    borderWidth: 1,
    borderColor: theme.colors.border,
  },
  bodyText: {
    fontSize: 15,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.body,
    lineHeight: 24,
  },
  dosageHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 8,
  },
  peptideName: {
    fontSize: 18,
    color: '#fff',
    fontFamily: theme.fonts.heading,
    fontStyle: 'italic',
  },
  dosageValue: {
    fontSize: 14,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.bodyBold,
    lineHeight: 20,
  },
  disclaimerBox: {
    marginTop: 20,
    padding: 20,
    borderRadius: 16,
    backgroundColor: 'rgba(255, 255, 255, 0.02)',
  },
  disclaimerText: {
    fontSize: 11,
    color: theme.colors.textSecondary,
    textAlign: 'center',
    fontFamily: theme.fonts.body,
    lineHeight: 18,
    fontStyle: 'italic',
  }
});
