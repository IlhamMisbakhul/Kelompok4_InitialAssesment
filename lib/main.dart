import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
            // Tindakan yang diambil saat tombol kembali ditekan
            // Misalnya, keluar dari aplikasi
            Navigator.of(context).popUntil((route) => route.isFirst);
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
              // Tindakan yang diambil saat tombol pencarian ditekan
              // Misalnya, membuka panel pencarian
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color(0xffBBC4CE).withOpacity(0.35),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xff863ED5),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Center(
                          child: Text(
                            "6",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.share_outlined,
                              size: 24.0,
                              color: Color(0xff863ED5),
                            ),
                            const Icon(
                              Icons.play_arrow_outlined,
                              size: 24.0,
                              color: Color(0xff863ED5),
                            ),
                            const Icon(
                              Icons.bookmark_border_outlined,
                              size: 24.0,
                              color: Color(0xff863ED5),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Text("اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ"),
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              child: Text("Bimbinglah kami ke jalan yang lurus"),
              padding: EdgeInsets.all(20),
            ),
            Column(
              children: [
                Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color(0xffBBC4CE).withOpacity(0.35),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xff863ED5),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Center(
                          child: Text(
                            "7",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.share_outlined,
                              size: 24.0,
                              color: Color(0xff863ED5),
                            ),
                            const Icon(
                              Icons.play_arrow_outlined,
                              size: 24.0,
                              color: Color(0xff863ED5),
                            ),
                            const Icon(
                              Icons.bookmark_border_outlined,
                              size: 24.0,
                              color: Color(0xff863ED5),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                  "صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلاَ الضَّالِّينَ"),
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              child: Text(
                  "Jalan orang yang Kau beri nikmat kepada mereka, bukan (jalan) mereka yang dimurka, dan bukan (jalan) mereka yang tersesat"),
              padding: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
    );
  }
}

// Kelas untuk panel pencarian
class DataSearch extends SearchDelegate<String> {
  @override
  String get searchFieldLabel => 'Cari';

  @override
  List<Widget> buildActions(BuildContext context) {
    // Tampilkan ikon "hapus" untuk menghapus teks pencarian
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
    // Tampilkan ikon "kembali" di sebelah kiri bar pencarian
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
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Tampilkan saran pencarian saat pengguna mengetik
    final suggestionList = query.isEmpty
        ? [] // Jika query kosong, tampilkan daftar kosong
        : ['Hasil 1', 'Hasil 2', 'Hasil 3']
            .where((p) => p.startsWith(query))
            .toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        title: Text(suggestionList[index]),
        onTap: () {
          // Tindakan yang diambil saat salah satu saran dipilih
          // Misalnya, tampilkan detail pencarian atau lakukan tindakan lainnya
          showResults(context);
        },
      ),
      itemCount: suggestionList.length,
    );
  }
}
