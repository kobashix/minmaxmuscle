import React, { useEffect, useState } from 'react';
import { View, Text, StyleSheet, FlatList, TouchableOpacity, ActivityIndicator } from 'react-native';
import { theme } from '../theme/theme';
import { fetchDatabase, Stack } from '../utils/api';
import { ChevronRight, Zap } from 'lucide-react-native';

export const StackListScreen = ({ navigation }: any) => {
  const [stacks, setStacks] = useState<Stack[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadData();
  }, []);

  const loadData = async () => {
    const data = await fetchDatabase();
    setStacks(data.stacks);
    setLoading(false);
  };

  const renderItem = ({ item }: { item: Stack }) => (
    <TouchableOpacity 
      style={styles.itemCard}
      onPress={() => navigation.navigate('StackDetail', { stack: item })}
    >
      <View style={styles.itemContent}>
        <View style={styles.iconBox}>
          <Zap color={theme.colors.primary} size={24} />
        </View>
        <View style={styles.itemTextGroup}>
          <Text style={styles.itemName}>{item.stack_name}</Text>
          <Text style={styles.itemGoal} numberOfLines={1}>{item.goal}</Text>
        </View>
        <ChevronRight color={theme.colors.textSecondary} size={20} />
      </View>
    </TouchableOpacity>
  );

  return (
    <View style={styles.container}>
      {loading ? (
        <View style={styles.loadingBox}>
          <ActivityIndicator color={theme.colors.primary} />
        </View>
      ) : (
        <FlatList
          data={stacks}
          renderItem={renderItem}
          keyExtractor={(item) => item.id.toString()}
          contentContainerStyle={styles.listContent}
        />
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: theme.colors.background,
  },
  listContent: {
    padding: 20,
    gap: 16,
  },
  itemCard: {
    backgroundColor: theme.colors.surface,
    borderRadius: 20,
    padding: 20,
    borderWidth: 1,
    borderColor: theme.colors.border,
  },
  itemContent: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  iconBox: {
    width: 48,
    height: 48,
    borderRadius: 12,
    backgroundColor: 'rgba(37, 99, 235, 0.1)',
    justifyContent: 'center',
    alignItems: 'center',
    marginRight: 16,
  },
  itemTextGroup: {
    flex: 1,
  },
  itemName: {
    fontSize: 20,
    color: '#fff',
    fontFamily: theme.fonts.heading,
    fontStyle: 'italic',
  },
  itemGoal: {
    fontSize: 12,
    color: theme.colors.primary,
    fontFamily: theme.fonts.bodyBold,
    textTransform: 'uppercase',
    marginTop: 2,
    letterSpacing: 1,
  },
  loadingBox: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  }
});
