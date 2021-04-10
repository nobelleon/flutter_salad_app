import 'package:flutter/material.dart';
import 'package:salad_app/warna.dart';
import 'package:websafe_svg/websafe_svg.dart';

class KartuSalad extends StatelessWidget {
  final String judul;
  final String bahan;
  final String gambar;
  final int harga;
  final String kalori;
  final String deskripsi;
  final Function tekan;

  const KartuSalad({
    Key key,
    this.judul,
    this.bahan,
    this.gambar,
    this.harga,
    this.kalori,
    this.deskripsi,
    this.tekan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tekan,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 390,
        width: 270,
        child: Stack(
          children: <Widget>[
            // Big light background
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: nPrimaryColor.withOpacity(.06),
                ),
              ),
            ),
            // utk warna background lingkaran
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 151,
                width: 151,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: nPrimaryColor.withOpacity(.15),
                ),
              ),
            ),
            // food image
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 150,
                width: 246,
                child: WebsafeSvg.asset(
                  gambar,
                ),
              ),
            ),
            // harga
            Positioned(
              right: 8,
              top: 80,
              child: Text(
                "\Rp$harga",
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: nPrimaryColor, fontSize: 17),
              ),
            ),
            // Nama salad
            Positioned(
              top: 171,
              left: 34,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      judul,
                      style: Theme.of(context).textTheme.headline.copyWith(
                          color: Colors.green[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Text(
                      "Dengan $bahan",
                      style: TextStyle(
                        color: nTextColor.withOpacity(.4),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      deskripsi,
                      maxLines: 4,
                      style: TextStyle(
                        color: nTextColor.withOpacity(.65),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(kalori)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
