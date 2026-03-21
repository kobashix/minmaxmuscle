import React from 'react';
import { View, Text, StyleSheet, ScrollView, SafeAreaView, TouchableOpacity } from 'react-native';
import { theme } from '../theme/theme';
import { ChevronLeft, Info, FileText, FlaskConical, HelpCircle } from 'lucide-react-native';

export const PeptideDetailScreen = ({ route, navigation }: any) => {
  const { peptide } = route.params;

  const faqs = peptide.faq_questions ? peptide.faq_questions.split('|||').map((q: string, i: number) => ({
    question: q,
    answer: peptide.faq_answers.split('|||')[i]
  })) : [];

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView contentContainerStyle={styles.scrollContent}>
        <View style={styles.header}>
          <Text style={styles.category}>{peptide.Category}</Text>
          <Text style={styles.title}>{peptide.peptide_name}</Text>
          <Text style={styles.nicknames}>{peptide.nicknames}</Text>
        </View>

        <View style={styles.section}>
          <View style={styles.sectionHeader}>
            <Info color={theme.colors.primary} size={18} />
            <Text style={styles.sectionTitle}>RESEARCH SUMMARY</Text>
          </View>
          <View style={styles.glassCard}>
            <Text style={styles.bodyText}>{peptide.research_summary}</Text>
          </View>
        </View>

        <View style={styles.section}>
          <View style={styles.sectionHeader}>
            <FlaskConical color={theme.colors.primary} size={18} />
            <Text style={styles.sectionTitle}>TECHNICAL SPECIFICATIONS</Text>
          </View>
          <View style={styles.glassCard}>
            <DetailRow label="Molecular" value={peptide.molecular_data} />
            <DetailRow label="Primary Focus" value={peptide.primary_focus} />
            <DetailRow label="Status" value={peptide.Status} />
          </View>
        </View>

        {faqs.length > 0 && (
          <View style={styles.section}>
            <View style={styles.sectionHeader}>
              <HelpCircle color={theme.colors.primary} size={18} />
              <Text style={styles.sectionTitle}>RESEARCH FAQ</Text>
            </View>
            {faqs.map((faq: any, index: number) => (
              <View key={index} style={[styles.glassCard, { marginBottom: 12 }]}>
                <Text style={styles.faqQuestion}>{faq.question}</Text>
                <Text style={styles.faqAnswer}>{faq.answer}</Text>
              </View>
            ))}
          </View>
        )}
      </ScrollView>
    </SafeAreaView>
  );
};

const DetailRow = ({ label, value }: any) => (
  <View style={styles.detailRow}>
    <Text style={styles.detailLabel}>{label}</Text>
    <Text style={styles.detailValue}>{value}</Text>
  </View>
);

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
  category: {
    fontSize: 10,
    color: theme.colors.primary,
    fontFamily: theme.fonts.bodyBold,
    letterSpacing: 2,
    marginBottom: 4,
  },
  title: {
    fontSize: 36,
    color: '#fff',
    fontFamily: theme.fonts.heading,
    fontStyle: 'italic',
  },
  nicknames: {
    fontSize: 14,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.body,
    marginTop: 4,
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
    borderRadius: 16,
    padding: 20,
    borderWidth: 1,
    borderColor: theme.colors.border,
  },
  bodyText: {
    fontSize: 15,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.body,
    lineHeight: 22,
  },
  detailRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 10,
    borderBottomWidth: 1,
    borderBottomColor: 'rgba(255, 255, 255, 0.05)',
  },
  detailLabel: {
    fontSize: 12,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.body,
  },
  detailValue: {
    fontSize: 12,
    color: '#fff',
    fontFamily: theme.fonts.bodyBold,
    flex: 1,
    textAlign: 'right',
    marginLeft: 20,
  },
  faqQuestion: {
    fontSize: 14,
    color: '#fff',
    fontFamily: theme.fonts.bodyBold,
    marginBottom: 8,
  },
  faqAnswer: {
    fontSize: 13,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.body,
    lineHeight: 20,
  }
});
