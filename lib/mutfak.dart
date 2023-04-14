import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MutfakEkran extends StatefulWidget {
  const MutfakEkran({super.key});

  @override
  State<MutfakEkran> createState() => _MutfakEkranState();
}

class _MutfakEkranState extends State<MutfakEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Mutfak",
            style: GoogleFonts.cardo(fontSize: 35),
          )),
      body: Mutfak(),
    );
  }
}

class Mutfak extends StatefulWidget {
  const Mutfak({super.key});

  @override
  State<Mutfak> createState() => _MutfakState();
}

class _MutfakState extends State<Mutfak> {
  TextEditingController t1 = TextEditingController();
  List AlisverisListesi = [
    "Demlik",
    "Borcam",
    "Su ısıtıcı",
    "Mutfak Perdesi",
    "Mutfak Masa Takımı",
    "Mutfak Halısı",
    "Avize",
    "Çelik Tencere Seti",
    "Teflon Tava Seti",
    "Cezve Seti",
    "Kepçe Seti",
    "Tahta Kaşık Seti",
    "Plastik Kaşık ve Karıştırma Ürünleri",
    "Çöp Kovası",
    "Sürahi",
    "Ölçü Kabı",
    "Cam Kase Seti",
    "6 – 12 Kişilik Su Bardağı",
    "6 – 12 Kişilik Meşrubat Bardağı",
    "6 Kişilik Günlük Çatal Bıçak Takımı",
    "12 Kişilik Çatal ve Bıçak Takımı",
    "Yemek Servis Takımı",
    "Sunum Kaşıkları",
    "Kahvaltı Tabak Takımı",
    "Pasta Takımı",
    "Sunum Tabakları",
    "Kurabiye Tabakları",
    "Çerez Tabakları",
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
