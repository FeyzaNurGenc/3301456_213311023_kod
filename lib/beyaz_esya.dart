import 'package:flutter/material.dart';

class BeyazEsyaEkran extends StatefulWidget {
  const BeyazEsyaEkran({super.key});

  @override
  State<BeyazEsyaEkran> createState() => _BeyazEsyaEkranState();
}

class _BeyazEsyaEkranState extends State<BeyazEsyaEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Beyaz Eşya")),
      body: BeyazEsya(),
    );
  }
}

class BeyazEsya extends StatefulWidget {
  const BeyazEsya({super.key});

  @override
  State<BeyazEsya> createState() => _BeyazEsyaState();
}

class _BeyazEsyaState extends State<BeyazEsya> {
  TextEditingController t1 = TextEditingController();
  List AlisverisListesi = [
    "Buzdolabı",
    "Bulaşık makinesi",
    "Ocak",
    "Davlumbaz",
    "Fırın",
    "Mikser",
    "Blender",
    "Kettle",
    "Mikrodalga fırın",
    "Tost makinesi",
    "Çamaşır makinesi",
    "Ütü",
    "Elektrik süpürgesi",
    "Saç kurutma makinesi",
    "Elektrikli el süpürgesi",
    "Televizyon"
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
                    title: Text(AlisverisListesi[indeksNumarasi]),
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
