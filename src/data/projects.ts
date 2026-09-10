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
    code: 'SB-001',
    title: 'Signalbox',
    slug: 'signalbox',
    status: 'Active development',
    description:
      'Modern terminal client for Pandora, carrying pianobar’s native-C foundation into a responsive terminal UI for macOS and Linux.',
    tags: ['C', 'terminal UI', 'macOS', 'Linux', 'FOSS project'],
    url: '/projects/signalbox/',
    accent: 'green',
  },
  {
    code: 'DCV-001',
    title: 'PLEASE REWIND: A Dead Channel Video Story',
    slug: 'please-rewind',
    status: 'In development',
    description:
      'Independent 3D game developed in Godot 4 across gameplay and state systems, interactive environments, UI, tooling, debugging, optimization, and iterative production engineering.',
    tags: ['Godot 4', 'GDScript', '3D', 'systems', 'Git'],
    accent: 'magenta',
  },
  {
    code: 'PS-001',
    title: 'Pixel & Stack',
    slug: 'pixel-and-stack',
    status: 'Ongoing',
    description:
      'Independent software and web consultancy providing full-stack development, database-driven internal tools, systems integration, infrastructure, maintenance, and long-term production support.',
    tags: ['full stack', 'data systems', 'integrations', 'infrastructure'],
    accent: 'green',
  },
  {
    code: 'TM-001',
    title: 'TamaMedics',
    slug: 'tamamedics',
    status: 'Active research',
    description:
      'Open-source digital preservation, research, and technical documentation for Tamagotchi repair, firmware, and community tooling built with Astro and TypeScript.',
    tags: ['Astro', 'TypeScript', 'preservation', 'open source'],
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
