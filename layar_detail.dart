import 'package:flutter/material.dart';
import 'package:salad_app/layar_detail_italy1.dart';
import 'package:salad_app/layar_utama.dart';
import 'package:salad_app/warna.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LayarDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: IconButton(
                    icon: WebsafeSvg.asset("assets/icons/backward.svg",
                        height: 11),
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LayarUtama(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  child: WebsafeSvg.asset("assets/icons/menu.svg", height: 11),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(6),
              height: 235,
              width: 235,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: nSecondaryColor,
              ),
              child: Container(
                height: 50,
                width: 50,
                child: WebsafeSvg.asset(
                  "assets/icons/salad2.svg",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Candyville cobb salad\n",
                        style: Theme.of(context).textTheme.headline.copyWith(
                            color: Colors.green[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 21),
                      ),
                      TextSpan(
                        text: "Dengan tomat merah",
                        style: TextStyle(
                          color: nTextColor.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\Rp.70.000",
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(color: nPrimaryColor, fontSize: 21),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Salad ini dibuat dengan sayuran ‎‎salad‎‎ cincang (endives dan selada romaine), tomat, bacon renyah, dada ayam panggang, telur rebus, alpukat, daun bawang, keju Roquefort, dan vinaigrette anggur merah.‎",
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                    decoration: BoxDecoration(
                      color: nPrimaryColor.withOpacity(.19),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "add to bag",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.purple[500]),
                        ),
                        SizedBox(width: 30),
                        WebsafeSvg.asset("assets/icons/forward.svg",
                            height: 11),
                      ],
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: nPrimaryColor.withOpacity(.26),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(12),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: nPrimaryColor,
                          ),
                          child: WebsafeSvg.asset("assets/icons/bag.svg"),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: nWhiteColor,
                            ),
                            child: Text(
                              "0",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: nPrimaryColor, fontSize: 16),
                            ),
                          ),
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
    );
  }
}
