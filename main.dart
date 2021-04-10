import 'package:flutter/material.dart';
import 'package:salad_app/layar_detail.dart';
import 'package:salad_app/layar_detail_french1.dart';
import 'package:salad_app/layar_detail_italy1.dart';
import 'package:salad_app/layar_detail_japan1.dart';
import 'package:salad_app/layar_utama.dart';
import 'package:salad_app/warna.dart';
import 'package:salad_app/widgets/judul_kategori.dart';
import 'package:salad_app/widgets/kartu_salad.dart';
import 'package:websafe_svg/websafe_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Salad App',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: nBlueColor,
        primaryColor: nPrimaryColor,
        textTheme: TextTheme(
          headline: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: LayarUtama(),
    );
  }
}
