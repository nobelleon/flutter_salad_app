import 'package:flutter/material.dart';
import 'package:salad_app/warna.dart';

class JudulKategori extends StatelessWidget {
  final String judul;
  final bool aktif;

  const JudulKategori({
    Key key,
    this.aktif = false,
    this.judul,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 25),
      child: Text(
        judul,
        style: Theme.of(context).textTheme.button.copyWith(
              color: aktif ? nPrimaryColor : nTextColor.withOpacity(.4),
            ),
      ),
    );
  }
}
