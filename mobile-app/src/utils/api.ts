const API_URL = 'https://minmaxmuscle.com/api/peptides';

export interface Peptide {
  id: number;
  peptide_name: string;
  slug: string;
  molecular_data: string;
  research_summary: string;
  nicknames: string;
  Status: string;
  Category: string;
  primary_focus: string;
  rank: number;
  faq_questions?: string;
  faq_answers?: string;
}

export interface Stack {
  id: number;
  stack_name: string;
  slug: string;
  goal: string;
  description: string;
  rank: number;
  component_list: {
    name: string;
    slug: string;
    dosage: string;
  }[];
}

export const fetchDatabase = async () => {
  try {
    const response = await fetch(API_URL);
    if (!response.ok) throw new Error('Failed to fetch database');
    const data = await response.json();
    return data as { peptides: Peptide[], stacks: Stack[] };
  } catch (error) {
    console.error('Fetch Error:', error);
    return { peptides: [], stacks: [] };
  }
};
