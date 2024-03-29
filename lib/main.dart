import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: DetailScreen(),
  ));
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _ayatItem(
            nomor: 2,
            arabic: 'اَلْحَمْدُ لِلّٰهِ رَبِّ الْعٰلَمِيْنَۙ',
            translation: 'Segala Puji Bagi Allah Yang Maha Pengasih lagi Maha Penyayang.',
          ),
          _ayatItem(
            nomor: 3,
            arabic: 'الرَّحْمٰنِ الرَّحِيْمِۙ',
            translation:
                'Yang Maha Pengasih lagi Maha Penyayang',
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
                Icon(Icons.play_arrow_outlined, color: Color(0xFF863ED5)),
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
              fontSize: 18,
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
