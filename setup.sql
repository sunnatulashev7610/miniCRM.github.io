-- EduManager Pro: Supabase bazasini sozlash
-- Supabase > SQL Editor ga joylab, "Run" bosing.
-- DIQQAT: pastdagi ADMIN-UUID-NI-SHU-YERGA ni o'zingizning user ID ingiz bilan almashtiring (2 joyda).

create table if not exists public.em_data (
  key        text primary key,
  value      jsonb not null default '[]'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.em_data enable row level security;

-- Anonim (kirmagan) foydalanuvchilarga umuman ruxsat yo'q
revoke all on public.em_data from anon;

-- Faqat sizning hisobingiz o'qiy va yoza oladi
drop policy if exists "faqat admin" on public.em_data;
create policy "faqat admin" on public.em_data
  for all
  to authenticated
  using      ((select auth.uid()) = 'ADMIN-UUID-NI-SHU-YERGA'::uuid)
  with check ((select auth.uid()) = 'ADMIN-UUID-NI-SHU-YERGA'::uuid);
