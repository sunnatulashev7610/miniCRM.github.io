# EduManager Pro: serverga ulash qo'llanmasi

## 1. Supabase loyihasini yaratish
1. https://supabase.com ga kiring, ro'yxatdan o'ting, **New project** bosing.
2. Nom bering, **kuchli** database parol qo'ying (uni saqlab qo'ying), region sifatida yaqinini tanlang (masalan, Frankfurt).

## 2. Admin hisobini yaratish
1. **Authentication > Users > Add user > Create new user**.
2. O'z emailingiz va **yangi, kuchli parol** kiriting. "Auto Confirm User" ni yoqing.
3. Yaratilgan qatordagi **User UID** ni nusxalang (uzun kod, `xxxxxxxx-xxxx-...`).

## 3. Ro'yxatdan o'tishni yoping (juda muhim)
**Authentication > Sign In / Providers** (yoki Settings) ichida **"Allow new users to sign up"** ni **O'CHIRING**.
Shunda boshqa hech kim hisob yarata olmaydi.

## 4. Bazani sozlash
1. **SQL Editor > New query** ga `setup.sql` mazmunini joylang.
2. `ADMIN-UUID-NI-SHU-YERGA` ni 2-qadamdagi UID bilan almashtiring (ikki joyda).
3. **Run** bosing.

## 5. Kalitlarni kodga qo'yish
**Project Settings > API** dan oling:
- **Project URL** -> `SUPABASE_URL`
- **anon public** kalit -> `SUPABASE_ANON_KEY`

`index.html` ichida boshidagi ikki qatorni to'ldiring. Anon kalit ochiq bo'lishi normal, uni himoya qiladigan narsa 4-qadamdagi RLS qoidasi.
**"service_role" kalitini hech qachon kodga yozmang.**

## 6. Eski ma'lumotlarni ko'chirish (agar bo'lsa)
1. Eski `manager.html` ni o'sha brauzerda oching, Sozlamalar > **Backup yuklab olish**.
2. Yangi saytga kirib, Sozlamalar > **Backup'dan tiklash**.

## 7. GitHub Pages
1. Repoga `index.html` ni yuklang (eski `manager.html` ni **o'chiring**, ichida parol bor edi).
2. Settings > Pages > Branch: `main` / root > Save.
3. Sayt: `https://username.github.io/repo-nomi/`

## 8. Qo'shimcha himoya
- Eski parol (`firdavs56`) ni boshqa joylarda ishlatgan bo'lsangiz, almashtiring. U Git tarixida qoladi.
- Supabase hisobingizda 2FA yoqing.
- Muntazam **Backup yuklab olish** qilib turing (haftasiga bir marta).
- CRMni bir vaqtda faqat bitta qurilmada oching: ikkita oynada ishlasangiz, oxirgi saqlagani oldingisini bosib ketadi.
