import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team4InitAssesment',
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          },
        ),
        title: Text(
          'Al-Fatihah',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Color(0xFF672CBC),
            fontSize: 20.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 300.0,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: const Offset(2.0, 2.0),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ),
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            offset: const Offset(-2.0, -2.0),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 223, 200, 255), // ungu muda
                            Color.fromARGB(255, 193, 140, 230), // ungu agak tua
                          ],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 9, // Geser ke bawah sedikit
                            right: 9, // Geser ke kanan sedikit
                            child: Opacity(
                              opacity:
                                  0.2, // Ubah ke transparansi yang diinginkan (0.0 - 1.0)
                              child: Image.asset(
                                'assets/alquran.png', // Ganti dengan path gambar Al-Qur'an Anda
                                width: 180, // Sesuaikan ukuran gambar
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Al-Fatihah",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "The Opening",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 8),
                                Divider(),
                                SizedBox(height: 8),
                                Text(
                                  "MECCAN • 7 VERSES",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: 'Arabic',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _ayatItem(
            nomor: 1,
            arabic: 'مٰلِكِ يَوْمِ الدِّيْنِ',
            translation: 'Segala puji bagi Allah, Tuhan semesta alam.',
          ),
          _ayatItem(
            nomor: 2,
            arabic: 'اَلْحَمْدُ لِلّٰهِ رَبِّ الْعٰلَمِيْنَۙ',
            translation:
                'Segala Puji Bagi Allah Yang Maha Pengasih lagi Maha Penyayang.',
          ),
          _ayatItem(
            nomor: 3,
            arabic: 'الرَّحْمٰنِ الرَّحِيْمِۙ',
            translation: 'Yang Maha Pengasih lagi Maha Penyayang',
          ),
          _ayatItem(
            nomor: 4,
            arabic: 'مٰلِكِ يَوْمِ الدِّيْنِ',
            translation: 'Pemilik hari pembalasan.',
          ),
          _ayatItem(
            nomor: 5,
            arabic: 'اِيَّاكَ نَعْبُدُ وَاِيَّاكَ نَسْتَعِيْنُ',
            translation:
                'Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami mohon pertolongan.',
          ),
          _ayatItem(
            nomor: 6,
            arabic: 'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
            translation: 'Bimbinglah kami ke jalan yang lurus',
          ),
          _ayatItem(
            nomor: 7,
            arabic:
                'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلاَ الضَّالِّينَ',
            translation:
                'Jalan orang yang Kau beri nikmat kepada mereka, bukan (jalan) mereka yang dimurka, dan bukan (jalan) mereka yang tersesat',
          ),
        ],
      ),
    );
  }

  Widget _ayatItem({
    required int nomor,
    required String arabic,
    required String translation,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: Color(0x0D121931), // Ganti dengan warna yang Anda inginkan
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    color: Color(
                        0xFF863ED5), // Ganti dengan warna yang Anda inginkan
                    borderRadius: BorderRadius.circular(27 / 2),
                  ),
                  child: Center(
                    child: Text(
                      '$nomor',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Icon(Icons.share_outlined, color: Color(0xFF863ED5)),
                SizedBox(width: 16),
                Icon(Icons.play_arrow_outlined,
                    color: Color(0xFF863ED5), size: 32),
                SizedBox(width: 16),
                Icon(Icons.bookmark_outline, color: Color(0xFF863ED5)),
              ],
            ),
          ),
          SizedBox(height: 24),
          Text(
            arabic,
            style: GoogleFonts.amiri(
              color: Color(0xFF240F4F), // Ganti dengan warna yang Anda inginkan
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(height: 16),
          Text(
            translation,
            style: GoogleFonts.poppins(
                color: Color(0xFF863ED5),
                fontSize: 16), // Ganti dengan warna yang Anda inginkan
          )
        ],
      ),
    );
  }
}

// Search Class
class DataSearch extends SearchDelegate<String> {
  @override
  String get searchFieldLabel => 'Cari';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Tampilkan hasil pencarian
    return buildSearchResults(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Tampilkan saran pencarian saat pengguna mengetik
    return buildSearchResults(context);
  }

  Widget buildSearchResults(BuildContext context) {
    // Buat daftar saran pencarian (suggestion list)
    final suggestionList = [];

    // Filter daftar saran berdasarkan query
    final filteredList = suggestionList
        .where((text) => text.toLowerCase().contains(query.toLowerCase()))
        .toList();

    // Tampilkan daftar hasil pencarian
    return ListView.builder(
      itemCount: filteredList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(filteredList[index]),
          onTap: () {
            // Tampilkan hasil
            showResults(context);
          },
        );
      },
    );
  }
}
