import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YatakOdasiEkran extends StatefulWidget {
  const YatakOdasiEkran({super.key});

  @override
  State<YatakOdasiEkran> createState() => _YatakOdasiEkranState();
}

class _YatakOdasiEkranState extends State<YatakOdasiEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Yatak Odası", style: GoogleFonts.cardo(fontSize: 35))),
      body: YatakOdasi(),
    );
  }
}

class YatakOdasi extends StatefulWidget {
  const YatakOdasi({super.key});

  @override
  State<YatakOdasi> createState() => _YatakOdasiState();
}

class _YatakOdasiState extends State<YatakOdasi> {
  TextEditingController t1 = TextEditingController();
  List AlisverisListesi = [
    "Yatak Odası Takımı",
    "Komodin",
    "Yastık",
    "Avize",
    "Çift Kişilik Yorgan",
    "Battaniye",
    "Çift Kişilik Nevresim Takımları",
    "Yatak Örtüsü",
    "Halı",
    "Baş Yastığı",
    "Lastikli Çarşaf",
    "Perde",
    "Pike Takımı",
    "Hurç",
    "Dolap askıları"
  ];

  elemanEkle() {
    setState(() {
      AlisverisListesi.add(t1.text);
      t1.clear();
    });
  }

  elemanCikart() {
    setState(() {
      AlisverisListesi.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Flexible(
            child: ListView.builder(
                itemCount: AlisverisListesi.length,
                itemBuilder: (context, indeksNumarasi) {
                  return ListTile(
                    title: Text(AlisverisListesi[indeksNumarasi],
                        style: GoogleFonts.merienda(
                            fontSize: 20, fontStyle: FontStyle.italic)),
                  );
                })),
        TextField(
          controller: t1,
        ),
        ElevatedButton(onPressed: elemanEkle, child: Text("Ekle")),
        ElevatedButton(onPressed: elemanCikart, child: Text("Çıkart")),
      ],
    ));
  }
}
