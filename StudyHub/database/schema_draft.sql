-- StudyHub schema draft
-- Planning draft, not final production SQL.

create table if not exists libraries (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  name text not null,
  description text,
  created_at timestamptz default now()
);

create table if not exists resources (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  library_id uuid references libraries(id),
  resource_type text not null,
  title text not null,
  author text,
  edition text,
  file_url text,
  created_at timestamptz default now()
);

create table if not exists chapters (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  resource_id uuid references resources(id),
  chapter_number text,
  title text not null,
  sort_order int,
  created_at timestamptz default now()
);

create table if not exists topics (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  chapter_id uuid references chapters(id),
  parent_topic_id uuid references topics(id),
  title text not null,
  sort_order int,
  created_at timestamptz default now()
);

create table if not exists notes (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  title text not null,
  body text,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists study_maps (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  title text not null,
  map_mode text default 'checklist',
  description text,
  created_at timestamptz default now()
);

create table if not exists remediation_entries (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  source text,
  question_ref text,
  topic text,
  what_i_missed text,
  correct_answer text,
  explanation text,
  why_i_missed_it text,
  status text default 'Needs Review',
  created_at timestamptz default now()
);

create table if not exists tags (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  name text not null,
  created_at timestamptz default now()
);

create table if not exists links (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  from_type text not null,
  from_id uuid not null,
  to_type text not null,
  to_id uuid not null,
  relationship_type text,
  created_at timestamptz default now()
);

create table if not exists tag_links (
  id uuid primary key default gen_random_uuid(),
  user_id uuid,
  tag_id uuid references tags(id),
  target_type text not null,
  target_id uuid not null,
  created_at timestamptz default now()
);
