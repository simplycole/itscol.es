export type Project = {
  code: string;
  title: string;
  slug: string;
  status: string;
  description: string;
  tags: string[];
  url?: string;
  source?: string;
  accent: 'green' | 'cyan' | 'magenta';
};

export const projects: Project[] = [
  {
    code: 'DCV-001',
    title: 'PLEASE REWIND',
    slug: 'please-rewind',
    status: 'In development',
    description:
      'A horror game set inside Dead Channel Video, a fictional 1990s independent video-store universe.',
    tags: ['Godot', 'game development', 'dead media'],
    accent: 'magenta',
  },
  {
    code: 'TM-001',
    title: 'TamaMedics',
    slug: 'tamamedics',
    status: 'Active research',
    description:
      'Open-source Tamagotchi repair, preservation, reverse-engineering, firmware research, documentation, and tooling.',
    tags: ['hardware preservation', 'firmware', 'open source'],
    url: 'https://tamamedics.com',
    source: 'https://github.com/simplycole/tamamedics.com',
    accent: 'cyan',
  },
];

export const experiments = [
  {
    code: 'HW-01',
    title: 'Hardware archaeology',
    description: 'Repair notes, board photos, mystery chips, and devices opened with unreasonable confidence.',
  },
  {
    code: 'FW-02',
    title: 'Firmware rabbit holes',
    description: 'Data formats, memory maps, tooling, and the occasional breakthrough at an irresponsible hour.',
  },
  {
    code: 'WEB-03',
    title: 'Internet oddments',
    description: 'Small web toys, useful scripts, unfinished ideas, and experiments that earned a permanent drawer.',
  },
];
