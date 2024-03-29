import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team4InitAssesment',
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
          style: TextStyle(
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
        padding: EdgeInsets.all(16),
        children: [
          _ayatItem(
            nomor: 1,
            arabic: 'مٰلِكِ يَوْمِ الدِّيْنِ',
            translation: 'Segala puji bagi Allah, Tuhan semesta alam.',
          ),
          _ayatItem(
            nomor: 2,
            arabic: 'اَلْحَمْدُ لِلّٰهِ رَبِّ الْعٰلَمِيْنَۙ',
            translation:
                'Segala Puji Bagi Allah Yang Maha Pengasih lagi Maha Penyayang.',
          ),
          _ayatItem(
            nomor: 3,
            arabic: 'الرَّحْمٰنِ الرَّحِيْمِۙ',
            translation: 'Yang Maha Pengasih lagi Maha Penyayang',
          ),
          _ayatItem(
            nomor: 4,
            arabic: 'مٰلِكِ يَوْمِ الدِّيْنِ',
            translation: 'Pemilik hari pembalasan.',
          ),
          _ayatItem(
            nomor: 5,
            arabic: 'اِيَّاكَ نَعْبُدُ وَاِيَّاكَ نَسْتَعِيْنُ',
            translation:
                'Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami mohon pertolongan.',
          ),
          _ayatItem(
            nomor: 6,
            arabic: 'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
            translation: 'Bimbinglah kami ke jalan yang lurus',
          ),
          _ayatItem(
            nomor: 7,
            arabic:
                'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلاَ الضَّالِّينَ',
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
    final suggestionList = [];

    final filteredList = suggestionList
        .where((text) => text.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(filteredList[index]),
          onTap: () {
            showResults(context);
          },
        );
      },
    );
  }
}
