import React, { useEffect, useState } from 'react';
import { View, Text, StyleSheet, FlatList, TextInput, TouchableOpacity, ActivityIndicator } from 'react-native';
import { theme } from '../theme/theme';
import { fetchDatabase, Peptide } from '../utils/api';
import { Search, ChevronRight } from 'lucide-react-native';

export const PeptideListScreen = ({ navigation }: any) => {
  const [peptides, setPeptides] = useState<Peptide[]>([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState('');

  useEffect(() => {
    loadData();
  }, []);

  const loadData = async () => {
    const data = await fetchDatabase();
    setPeptides(data.peptides);
    setLoading(false);
  };

  const filteredPeptides = peptides.filter(p => 
    p.peptide_name.toLowerCase().includes(search.toLowerCase()) ||
    p.nicknames.toLowerCase().includes(search.toLowerCase())
  );

  const renderItem = ({ item }: { item: Peptide }) => (
    <TouchableOpacity 
      style={styles.itemCard}
      onPress={() => navigation.navigate('PeptideDetail', { peptide: item })}
    >
      <View style={styles.itemContent}>
        <View style={styles.itemTextGroup}>
          <Text style={styles.itemName}>{item.peptide_name}</Text>
          <Text style={styles.itemFocus} numberOfLines={1}>{item.primary_focus}</Text>
        </View>
        <ChevronRight color={theme.colors.textSecondary} size={20} />
      </View>
    </TouchableOpacity>
  );

  return (
    <View style={styles.container}>
      <View style={styles.searchContainer}>
        <View style={styles.searchBar}>
          <Search color={theme.colors.textSecondary} size={18} />
          <TextInput
            style={styles.searchInput}
            placeholder="Search Research Data..."
            placeholderTextColor={theme.colors.textSecondary}
            value={search}
            onChangeText={setSearch}
          />
        </View>
      </View>

      {loading ? (
        <View style={styles.loadingBox}>
          <ActivityIndicator color={theme.colors.primary} />
        </View>
      ) : (
        <FlatList
          data={filteredPeptides}
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
  searchContainer: {
    padding: 20,
    paddingTop: 10,
  },
  searchBar: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: theme.colors.surface,
    borderRadius: 12,
    paddingHorizontal: 15,
    height: 50,
    borderWidth: 1,
    borderColor: theme.colors.border,
  },
  searchInput: {
    flex: 1,
    color: '#fff',
    marginLeft: 10,
    fontFamily: theme.fonts.body,
    fontSize: 14,
  },
  listContent: {
    padding: 20,
    gap: 12,
  },
  itemCard: {
    backgroundColor: theme.colors.surface,
    borderRadius: 16,
    padding: 20,
    borderWidth: 1,
    borderColor: theme.colors.border,
  },
  itemContent: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  itemTextGroup: {
    flex: 1,
  },
  itemName: {
    fontSize: 18,
    color: '#fff',
    fontFamily: theme.fonts.heading,
    fontStyle: 'italic',
  },
  itemFocus: {
    fontSize: 12,
    color: theme.colors.textSecondary,
    fontFamily: theme.fonts.body,
    marginTop: 2,
  },
  loadingBox: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  }
});
