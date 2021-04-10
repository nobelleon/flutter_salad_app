import 'package:flutter/material.dart';
import 'package:salad_app/layar_detail.dart';
import 'package:salad_app/layar_detail_french1.dart';
import 'package:salad_app/layar_detail_italy1.dart';
import 'package:salad_app/layar_detail_japan1.dart';
import 'package:salad_app/warna.dart';
import 'package:salad_app/widgets/judul_kategori.dart';
import 'package:salad_app/widgets/kartu_salad.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LayarUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: nPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: nPrimaryColor,
          ),
          child: WebsafeSvg.asset(
            "assets/icons/plus.svg",
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: WebsafeSvg.asset("assets/icons/menu.svg", height: 11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Cara sederhana menemukan \nSalad enak",
              style: Theme.of(context)
                  .textTheme
                  .headline
                  .copyWith(color: nCyanColor, fontSize: 21),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                JudulKategori(
                  judul: "Semua",
                  aktif: true,
                ),
                JudulKategori(judul: "Italy"),
                JudulKategori(judul: "Perancis"),
                JudulKategori(judul: "Jepang"),
                JudulKategori(judul: "Asia"),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: nBorderColor),
            ),
            child: WebsafeSvg.asset("assets/icons/search.svg"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                KartuSalad(
                  tekan: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LayarDetail(),
                      ),
                    );
                  },
                  judul: "Candyville cobb salad",
                  gambar: "assets/icons/salad2.svg",
                  harga: 70000,
                  kalori: "420Kcal",
                  deskripsi:
                      "Salad ini dibuat dengan sayuran ‎‎salad‎‎ cincang (endives dan selada romaine), tomat, bacon renyah, dada ayam panggang, telur rebus, alpukat, daun bawang, keju Roquefort, dan vinaigrette anggur merah.‎",
                  bahan: "tomat merah",
                ),
                KartuSalad(
                  tekan: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LayarDetailItaly1(),
                      ),
                    );
                  },
                  judul: "Zesty Italian Salad",
                  gambar: "assets/icons/salad_italy_1.svg",
                  harga: 72000,
                  kalori: "450Kcal. ~ Salad Italy",
                  deskripsi:
                      "‎Salad Italia segar yang diisi dengan selada renyah, tomat berair matang, minyak zaitun, bawang dan tentu saja zesty pepperoncinis‎‎.‎",
                  bahan: "paprika merah",
                ),
                KartuSalad(
                  judul: "Simple italian salad ",
                  gambar: "assets/icons/salad_italy_2.svg",
                  harga: 73000,
                  kalori: "450Kcal. ~ Salad Italy",
                  deskripsi:
                      "‎Salad Italia segar ini berisi Romaine cerah berdaun hijau, bawang merah, tomat ceri, Pepperoncinis, zaitun (untuk rasa salad Italia otentik), serta parmesan parut.‎",
                  bahan: "ekstra crouton",
                ),
                KartuSalad(
                  tekan: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LayarDetailFrench1(),
                      ),
                    );
                  },
                  judul: "French green salad ",
                  gambar: "assets/icons/french_green_salad.svg",
                  harga: 71500,
                  kalori: "470Kcal. ~ Salad Perancis",
                  deskripsi:
                      "Dalam versi salad klasik ini, kami telah menggabungkan sayuran hijau berdaun segar, mentimun menyegarkan yang dingin dan alpukat lemak sehat dan membekapnya dalam vinaigrette Prancis klasik kami yang super lezat.‎",
                  bahan: "french vinaigrette",
                ),
                KartuSalad(
                  judul: "French potato salad ",
                  gambar: "assets/icons/french_potato_salad.svg",
                  harga: 72500,
                  kalori: "420Kcal. ~ Salad Perancis",
                  deskripsi:
                      "Salad ini dibuat berbasis ‎‎cuka,‎‎ bukannya creamy seperti versi Amerika. Sementara bahan-bahannya dapat bervariasi, biasanya termasuk ‎‎kentang, ‎‎cuka dan minyak zaitun, herbal segar seperti peterseli atau dill, bawang merah atau daun bawang.‎",
                  bahan: "telur rebus",
                ),
                KartuSalad(
                  judul: "Japanese seaweed salad",
                  gambar: "assets/icons/japanese_seaweed_salad.svg",
                  harga: 70500,
                  kalori: "550Kcal. ~ Salad Jepang",
                  deskripsi:
                      "Salad ini dibuat dengan‎‎ bahan bawang hijau (Daun bawang), cincang, Wakame kering, alpukat, daikon parut, wortel parut, edamame serta di taburi ‎biji wijen hitam, rumput laut, dan irisan jeruk nipis‎.‎",
                  bahan: "telur rebus dan kecap",
                ),
                KartuSalad(
                  tekan: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LayarDetailJapan1(),
                      ),
                    );
                  },
                  judul: "Fresh basil salad",
                  gambar: "assets/icons/fresh_basil.svg",
                  harga: 69500,
                  kalori: "450Kcal. ~ Salad Jepang",
                  deskripsi:
                      "‎Salad mentimun yang menakjubkan ini adalah cara cerdas untuk menggunakan kelebihan mentimun atau kemangi, serta aprikot. Jika Anda tidak memiliki kemangi jeruk nipis, ganti kemangi segar ditambah 1/2 sendok teh parut kapur rind.",
                  bahan: "pluot‎",
                ),
                KartuSalad(
                  judul: "Crunchy ramen noodle salad",
                  gambar:
                      "assets/icons/crunchy_ramen_noodle_salad_coleslaw.svg",
                  harga: 74500,
                  kalori: "236Kcal. ~ Salad Asia",
                  deskripsi:
                      "‎Versi yang lebih baik dan sehat dari Ramen Salad klasik yang renyah yang dibuat dengan bahan-bahan segar. Kubis coleslaw membuatnya cepat dan mudah. Salad sehat ini isinya terdiri dari wortel parut, bawang hijau, edamame, jeruk, irisan almond, biji wijen dan mie ramen.",
                  bahan: "‎coleslaw mix‎",
                ),
                KartuSalad(
                  judul: "Asian salmon salad",
                  gambar: "assets/icons/asian_salmon_salad.svg",
                  harga: 79500,
                  kalori: "557Kcal. ~ Salad Asia",
                  deskripsi:
                      "‎Salad segar dengan atasan daging ikan salmon ini begitu menggoda selera, dengan tambahan varian alpukat, mentimun, daun bawang, bawang putih, kecap, cuka beras, biji wijen dan madu. dengan varian ini siap di sajikan dalam waktu kurang dari 15 menit.",
                  bahan: "tomat ceri‎",
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
