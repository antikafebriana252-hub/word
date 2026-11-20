# 📱 Panduan Mengubah WordQuest Menjadi APK Android

Proyek game **WordQuest: Petualangan Kata** telah berhasil disiapkan dan dikonfigurasi ke dalam format aplikasi Android!

Semua file proyek Android siap pakai sudah tersedia di folder:
👉 `WordQuest-Android/`

Selain itu, web aslinya di `Wordquest-main/` sudah di-upgrade menjadi **PWA (Progressive Web App)** lengkap dengan *Service Worker* dan *Web App Manifest* untuk mendukung instalasi offline.

---

## 🛠️ Pilihan Cara Menghasilkan File APK

Berikut adalah 4 cara yang bisa Anda pilih sesuai kebutuhan:

---

### Cara 1: Menggunakan Android Studio (Direkomendasikan & Paling Lengkap)

Proyek Android Studio sudah kami buatkan secara lengkap dengan konfigurasi:
- Fullscreen Immersive Mode (tampilan layar penuh game tanpa status bar & navigation bar)
- Akselerasi Perangkat Keras (Hardware Acceleration)
- WebViewAssetLoader modern untuk performa cepat dan bebas masalah file CORS
- Ikon aplikasi HD (Adaptive Mipmap Icons dari tile game)
- Support Tombol Back Android

**Langkah-langkah:**
1. Buka aplikasi **Android Studio** di komputer Anda.
2. Pilih **Open** (Buka Proyek) dan pilih folder:
   `c:\Users\LENOVO\Downloads\Wordquest-main (1)\WordQuest-Android`
3. Tunggu proses *Gradle Sync* selesai (pertama kali membutuhkan beberapa menit untuk mengunduh dependency).
4. Di menu atas, klik:
   **Build** > **Build Bundle(s) / APK(s)** > **Build APK(s)**.
5. Setelah selesai, akan muncul notifikasi di pojok kanan bawah:
   *`APK(s) generated successfully`* -> Klik link **locate**.
6. File `app-debug.apk` siap ditransfer dan diinstal di HP Android Anda!

---

### Cara 2: Build APK Otomatis di Cloud via GitHub Actions (Gratis & Tanpa Install Android Studio)

Kami sudah menambahkan workflow GitHub Actions otomatis di `.github/workflows/build-apk.yml`.

**Langkah-langkah:**
1. Upload/Push folder ini ke repositori **GitHub** pribadi Anda.
2. Buka tab **Actions** di repositori GitHub Anda.
3. GitHub akan otomatis melakukan kompilasi APK di cloud (dalam waktu ±2-3 menit).
4. Klik workflow run yang selesai, lalu unduh artifact **WordQuest-debug-apk**.
5. Di dalamnya terdapat file `.apk` yang siap diinstall di HP Android.

---

### Cara 3: Menggunakan Web Converter / PWABuilder (1-Klik Jadi APK)

Karena game ini sudah dilengkapi `manifest.json` dan `sw.js` (PWA):
1. Unggah folder `Wordquest-main` ke hosting gratis (seperti **GitHub Pages**, **Vercel**, atau **Netlify**).
2. Buka [PWABuilder](https://www.pwabuilder.com/).
3. Masukkan link website game Anda lalu klik **Start**.
4. Klik tombol **Package for Android (APK / AAB)**.
5. Anda langsung mendapatkan file APK yang sudah ditandatangani (signed) dan siap diinstall di HP!

*Alternatif tool offline:* Anda juga bisa menggunakan software seperti **Website 2 APK Builder** atau **Cordova CLI** dan cukup mengarahkan ke folder `Wordquest-main`.

---

### Cara 4: Install Langsung di HP Tanpa Perlu APK (Instan via Browser)

Berkat fitur PWA yang telah ditambahkan:
1. Jalankan game di browser HP Android Anda (Chrome, Edge, Samsung Internet).
2. Ketuk ikon titik tiga (Menu) di kanan atas browser.
3. Pilih **"Instal aplikasi"** atau **"Tambahkan ke Layar Utama" (Add to Home screen)**.
4. Game akan terpasang di menu aplikasi HP dengan ikon resmi dan berjalan layar penuh tanpa browser address bar!
