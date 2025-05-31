# Harry Potter Flutter Uygulaması

Bu proje, Harry Potter evrenindeki karakterleri, öğrenci ve personel verilerini ile büyü listesini görüntüleyen, arama ve filtreleme özellikleri sunan bir Flutter mobil uygulamasıdır. Veriler, bir API üzerinden çekilir.

---

## İçindekiler

- [Özellikler](#özellikler)  
- [Teknolojiler](#teknolojiler)  
- [Kullanım](#kullanım)  
- [Proje Yapısı](#proje-yapısı)  
- [Ekran Görüntüleri](#ekran-görüntüleri)  
- [Lisans](#lisans)  

---

## Ekran Görüntüleri

![WhatsApp Görsel 2025-06-01 saat 02 43 20_43e1f3ee](https://github.com/user-attachments/assets/c5fb165d-8683-4468-aca6-7f27cd603e86)
![WhatsApp Görsel 2025-06-01 saat 02 43 20_3932f2e1](https://github.com/user-attachments/assets/9678b575-107e-4eff-83b3-42aff13384ca)
![WhatsApp Görsel 2025-06-01 saat 02 43 20_c615837e](https://github.com/user-attachments/assets/f28623ad-763c-4bd8-a6ab-9f59919f9c99)
![WhatsApp Görsel 2025-06-01 saat 02 43 21_6ba867ff](https://github.com/user-attachments/assets/50a661a0-6962-49e6-a93a-be3a3a1e3a12)


---

## Özellikler

- **Ana Ekran (HomeScreen):**  
  - Çubuk sekmeler (TabBar) ile dört farklı sekme:  
    1. Characters (Tüm Karakterler)  
    2. Hogwarts Students (Öğrenciler)  
    3. Hogwarts Staffs (Personel)  
    4. All Spells (Büyü Listesi)  
  - **Arama (Search):**  
    - TypeAheadField kullanılarak “en az 2 karakter” girilmesi durumunda isim bazlı arama yapılır.  
    - Arama sonuçları listede eşleşen karakterleri önerir; öneriye tıklanınca ilgili karakterin detay sayfasına gider.  
  - **Filtreleme (Filter):**  
    - “House Filter” diyaloguyla (Slytherin, Gryffindor, Hufflepuff, Ravenclaw veya Tümü) seçilen eve göre listeleri filtreleme.  
    - Filtre aktifken sağ üstte bir “badge” gösterilir.  

- **Detay Ekranı (CharacterDetailScreen):**  
  - Seçilen karakterin fotoğrafını, adını ve temel bilgilerini (species, gender, house, doğum tarihi, sihirbaz mı, asası, patronus gibi) tablo düzeninde gösterir.  
  - İnternet sorunu veya zaman aşımı durumunda “Network Error” sayfasına yönlendirme.  

- **Network Hata Yönlendirmesi:**  
  - Dio interceptor’ı ile:  
    - Timeout (connect/receive/send)  
    - SocketException (internet kesildiğinde)  
    - HTTP 4xx/5xx (bad response)  
    durumlarında “NetworkError” ekranına gönderir.  
  - “Retry” butonuna tıklanınca ana ekrana geri dönerek verilerin yeniden yüklenmesi sağlanır.  

- **State Management:**  
  - Riverpod (ChangeNotifierProvider) kullanılarak veriler, yüklenme durumları ve UI’ın yeniden çizimi yönetilir.  
  - `autoDispose` ile “Network Error”’den geri dönüldüğünde temiz bir state ile yeniden veri çekme yapılır.  

---

## Teknolojiler

- **Dil ve Framework:**  
  - Flutter (2.0 ve üzeri)  
  - Dart  

- **State Management:**  
  - [Flutter Riverpod](https://pub.dev/packages/flutter_riverpod)  

- **HTTP İstekleri ve Hata Yönetimi:**  
  - [Dio](https://pub.dev/packages/dio) (5.x veya 4.x)  
  - Dio Interceptor kullanılarak “timeout”, “connection error”, “bad response” durumlarında yönlendirme  

- **📇 Arama (TypeAhead):**  
  - [flutter_typeahead](https://pub.dev/packages/flutter_typeahead)  

- **UI Bileşenleri ve İkonlar:**  
  - Material Widgets (TabBar, Chip, ListTile, Card, Table, vs.)  
  - Cupertino Icons (Kullanıcı avatarı için fallback icon)  

- **Diğer:**  
  - [GetX](https://pub.dev/packages/get) (Navigasyon)  
  - [content_size_tabbarview](https://pub.dev/packages/contentsize_tabbarview) (TabBarView içeriğini dinamik boyutlandırma)  

---


## Kullanım

1. **Ana Ekran**

   * Uygulama açıldığında “Tüm Karakterler” sekmesi otomatik yüklenecek ve ilgili karakterler listelenecektir.
   * Üstteki “Arama” çubuğuna en az 2 harf girdiğinizde arama önerileri gösterilir. Öneriye tıklayarak karakterin detay sayfasına gidebilirsiniz.
   * Sağ üstteki filtre simgesine (slider ikonu) tıklayarak “House Filter” diyalogunu açın, bir ev seçin veya “All” seçeneğine tıklayıp onaylayın. Listeler seçilen eve göre filtrelenecektir.

2. **Sekmeler Arası Geçiş**

   * İkinci sekmede (Hogwarts Students), sadece öğrenci verileri gösterilir.
   * Üçüncü sekmede (Hogwarts Staffs), sadece personel verileri gösterilir.
   * Dördüncü sekmede (All Spells), büyü isim ve kısa açıklama listesi görüntülenir; bir büyüye tıklayınca açılan dialog’da açıklamasının tamamı yer alır.

3. **Detay Ekranı**

   * Bir karakter seçildiğinde “CharacterDetailScreen” açılır.
   * Üst bölümde karakter adı ve avatar, altında Card içinde özellik tablosu (species, gender, house, doğum tarihi, asa bilgileri, vs.) gösterilir.
   * Ekranı aşağı kaydırarak tüm özellikleri görüntüleyebilirsiniz.

4. **Network Hatası ve Retry**

   * İnternet bağlantısı yoksa veya API zaman aşımına uğrarsa (timeout) “Network Error” sayfasına yönlendirme yapılır.
   * Bu ekranda “Retry” butonuna basınca ana ekrana (`HomeRoute`) dönülür ve veriler yeniden yüklenecek şekilde ayarlanmıştır.
   * Bu sayede bağlantı tekrar geldiğinde uygulama otomatik veri çekme işlemini tekrar eder.

---

## Proje Yapısı

```
lib/
├─ core/
│  ├─ constants/
│  │  └─ app_constants.dart      # BASE_API_URL ve genel sabitler
│  ├─ init/
│  │  ├─ navigation/
│  │  │  └─ navigation_manager.dart   # GetX rotaları tanımı
│  │  ├─ network/
│  │  │  └─ network_manager.dart      # Dio singleton, interceptor
│  │  └─ service/
│  │     └─ main_service.dart         # API çağrılarını yapan servis fonksiyonları
│  └─ model/
│     ├─ character_response.dart      # Karakter (JSON ↔ Dart model)
│     └─ spell_response.dart          # Büyü (JSON ↔ Dart model)
│
├─ view/
│  ├─ home_screen.dart                # Ana ekran (sekme + arama + filtreleme)
│  ├─ character_detail_screen.dart    # Karakter detay ekranı
│  ├─ network_error.dart              # “Network Error” sayfası
│  └─ widgets/
│     ├─ search_area.dart             # Arama çubuğu ve TypeAheadField
│     ├─ house_filter_button.dart     # Filtre butonu ve diyalog
│     ├─ home_tab_view.dart           # TabBar + TabBarView yapısı
│     ├─ generic_character_list.dart  # Karakter/Öğrenci/Personel listesi
│     ├─ spell_list_widget.dart       # Büyü listesi bileşeni
│     ├─ detail_header.dart           # Karakter detay üst bölümü (avatar + isim)
│     └─ detail_info_table.dart       # Karakter detay tablo bölümü
│
├─ viewmodel_provider.dart            # Riverpod provider tanımı
│
└─ main.dart                          # Uygulama başlangıç, GetMaterialApp, navigator
```

* **`core/init/network/network_manager.dart`**

  * `Dio` nesnesi tek bir yerde oluşturulur.
  * Timeout ve “internet kapalı” durumlarında “Network Error” sayfasına yönlendirme yapılır.

* **`core/init/service/main_service.dart`**

  * API çağrılarını yapan `getAllCharacters()`, `getCharacterById()`, `getAllStudents()`, `getAllStaffs()`, `getAllSpells()` metodları.
  * Hata durumunda `DioException` olarak fırlatır ve interceptor’da işlenir.

* **`view/home_screen.dart`**

  * Ana ekrandaki `BaseView` altyapısı, dört sekmeli (TabBar) yapı, arama ve filtreleme işlevleri.
  * Riverpod ile `ViewModel` dinlenir ve her sekme için ilgili liste bileşeni (`GenericCharacterList`, `SpellListWidget`) çağrılır.

* **`view/character_detail_screen.dart`**

  * Seçilen karakterin tüm detaylarını gösterir.
  * `DetailHeader` ile üst kısım (isim + avatar), `DetailInfoTable` ile tablo düzenli bilgi kısmı.

* **`view/network_error.dart`**

  * “Network Error” mesajı ve “Retry” butonunu içerir.
  * `Retry` sonrası `viewModel`’ı sıfırlayarak yeniden veri yüklemeye olanak tanır.

* **`view/widgets/...`**

  * Tüm ortak bileşenler (arama, filtre, listeler, tablo, detay header) ayrı dosyalarda toplanmıştır.
  * Tekrar kullanım ve okunabilirlik için her widget tek sorumluluk odaklıdır.

---



## Lisans

Bu proje MIT Lisansı ile lisanslanmıştır.
Daha fazla bilgi için [LICENSE](./LICENSE) dosyasına bakabilirsiniz.

---

*Son Güncelleme: 2025-06-01*

```
```
