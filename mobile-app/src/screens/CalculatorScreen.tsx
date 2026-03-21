import React, { useState } from 'react';
import { View, Text, StyleSheet, ScrollView, TextInput, TouchableOpacity } from 'react-native';
import { theme } from '../theme/theme';
import { Calculator, Zap, Calendar } from 'lucide-react-native';

export const CalculatorScreen = () => {
  const [activeTab, setActiveTab] = useState('recon');

  return (
    <View style={styles.container}>
      <View style={styles.tabContainer}>
        <TabButton 
          active={activeTab === 'recon'} 
          label="RECON" 
          onPress={() => setActiveTab('recon')} 
        />
        <TabButton 
          active={activeTab === 'iu'} 
          label="IU" 
          onPress={() => setActiveTab('iu')} 
        />
        <TabButton 
          active={activeTab === 'cycle'} 
          label="CYCLE" 
          onPress={() => setActiveTab('cycle')} 
        />
      </View>

      <ScrollView contentContainerStyle={styles.scrollContent}>
        {activeTab === 'recon' && <ReconCalc />}
        {activeTab === 'iu' && <IUCalc />}
        {activeTab === 'cycle' && <CycleCalc />}
      </ScrollView>
    </View>
  );
};

const TabButton = ({ active, label, onPress }: any) => (
  <TouchableOpacity 
    style={[styles.tabBtn, active && styles.tabBtnActive]} 
    onPress={onPress}
  >
    <Text style={[styles.tabText, active && styles.tabTextActive]}>{label}</Text>
  </TouchableOpacity>
);

const ReconCalc = () => {
  const [mg, setMg] = useState('');
  const [ml, setMl] = useState('');
  const [mcg, setMcg] = useState('');

  const res = (mg && ml && mcg) ? (parseFloat(mcg) / ((parseFloat(mg) * 1000) / (parseFloat(ml) * 100))).toFixed(1) : '0.0';

  return (
    <View style={styles.calcBox}>
      <Text style={styles.calcTitle}>RECONSTITUTION</Text>
      <Input label="Vial Quantity (mg)" value={mg} onChange={setMg} />
      <Input label="Bacteriostatic Water (ml)" value={ml} onChange={setMl} />
      <Input label="Desired Dose (mcg)" value={mcg} onChange={setMcg} />
      <View style={styles.resultBox}>
        <Text style={styles.resultLabel}>INSULIN SYRINGE UNITS</Text>
        <Text style={styles.resultValue}>{res}</Text>
      </View>
    </View>
  );
};

const IUCalc = () => {
  const [mcg, setMcg] = useState('');
  const res = mcg ? (parseFloat(mcg) / 333.33).toFixed(1) : '0.0';

  return (
    <View style={styles.calcBox}>
      <Text style={styles.calcTitle}>IU CONVERTER (HGH)</Text>
      <Input label="Mass in Micrograms (mcg)" value={mcg} onChange={setMcg} />
      <View style={styles.resultBox}>
        <Text style={styles.resultLabel}>INTERNATIONAL UNITS (IU)</Text>
        <Text style={styles.resultValue}>{res}</Text>
      </View>
    </View>
  );
};

const CycleCalc = () => {
  const [dose, setDose] = useState('');
  const [freq, setFreq] = useState('');
  const [weeks, setWeeks] = useState('');
  const res = (dose && freq && weeks) ? (parseFloat(dose) * parseFloat(freq) * parseFloat(weeks)).toFixed(1) : '0.0';

  return (
    <View style={styles.calcBox}>
      <Text style={styles.calcTitle}>CYCLE PLANNER</Text>
      <Input label="Dose per Admin (mg)" value={dose} onChange={setDose} />
      <Input label="Admins per Week" value={freq} onChange={setFreq} />
      <Input label="Cycle Duration (Weeks)" value={weeks} onChange={setWeeks} />
      <View style={styles.resultBox}>
        <Text style={styles.resultLabel}>TOTAL MG REQUIRED</Text>
        <Text style={styles.resultValue}>{res}</Text>
      </View>
    </View>
  );
};

const Input = ({ label, value, onChange }: any) => (
  <View style={styles.inputGroup}>
    <Text style={styles.inputLabel}>{label}</Text>
    <TextInput
      style={styles.input}
      value={value}
      onChangeText={onChange}
      keyboardType="numeric"
      placeholder="0.0"
      placeholderTextColor={theme.colors.textSecondary}
    />
  </View>
);

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: theme.colors.background,
  },
  tabContainer: {
    flexDirection: 'row',
    padding: 20,
    gap: 12,
  },
  tabBtn: {
    flex: 1,
    height: 40,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: theme.colors.surface,
    borderWidth: 1,
    borderColor: theme.colors.border,
  },
  tabBtnActive: {
    backgroundColor: '#fff',
    borderColor: '#fff',
  },
  tabText: {
    fontSize: 10,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.bodyBold,
    letterSpacing: 1,
  },
  tabTextActive: {
    color: '#000',
  },
  scrollContent: {
    padding: 20,
  },
  calcBox: {
    backgroundColor: theme.colors.surface,
    borderRadius: 24,
    padding: 30,
    borderWidth: 1,
    borderColor: theme.colors.border,
  },
  calcTitle: {
    fontSize: 24,
    color: '#fff',
    fontFamily: theme.fonts.heading,
    fontStyle: 'italic',
    marginBottom: 24,
  },
  inputGroup: {
    marginBottom: 20,
  },
  inputLabel: {
    fontSize: 10,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.bodyBold,
    marginBottom: 8,
    letterSpacing: 1,
    textTransform: 'uppercase',
  },
  input: {
    height: 56,
    backgroundColor: 'rgba(255, 255, 255, 0.03)',
    borderRadius: 12,
    paddingHorizontal: 16,
    color: '#fff',
    fontSize: 18,
    fontFamily: theme.fonts.body,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.05)',
  },
  resultBox: {
    marginTop: 20,
    padding: 24,
    backgroundColor: 'rgba(37, 99, 235, 0.1)',
    borderRadius: 16,
    alignItems: 'center',
  },
  resultLabel: {
    fontSize: 10,
    color: theme.colors.primary,
    fontFamily: theme.fonts.bodyBold,
    letterSpacing: 1,
    marginBottom: 8,
  },
  resultValue: {
    fontSize: 48,
    color: '#fff',
    fontFamily: theme.fonts.heading,
    fontStyle: 'italic',
  }
});
