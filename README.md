# salad_app

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

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
