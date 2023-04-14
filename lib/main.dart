import 'package:ceyiz/banyo.dart';
import 'package:ceyiz/yatak_odasi.dart';
import 'package:flutter/material.dart';
import 'package:ceyiz/mutfak.dart';
import 'package:ceyiz/oturma_odasi.dart';
import 'package:ceyiz/salon.dart';
import 'package:ceyiz/beyaz_esya.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Çeyiz",
      home: Ana(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

class Ana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Çeyiz Listesi", style: GoogleFonts.cardo(fontSize: 35)),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/arkaplan.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SinifButonu(context,
                isimler: "Mutfak",
                sayfalar: MutfakEkran(),
                iconlar: Icons.kitchen),
            SizedBox(
              height: 35,
            ),
            SinifButonu(context,
                isimler: "Salon",
                sayfalar: SalonEkran(),
                iconlar: Icons.living),
            SizedBox(
              height: 35,
            ),
            SinifButonu(context,
                isimler: "Oturma odası",
                sayfalar: OturmaOdasiEkran(),
                iconlar: Icons.living_rounded),
            SizedBox(
              height: 35,
            ),
            SinifButonu(context,
                isimler: "Yatak odası",
                sayfalar: YatakOdasiEkran(),
                iconlar: Icons.bedroom_parent),
            SizedBox(
              height: 35,
            ),
            SinifButonu(context,
                isimler: "Beyaz eşya",
                sayfalar: BeyazEsyaEkran(),
                iconlar: Icons.bedroom_child),
            SizedBox(
              height: 35,
            ),
            SinifButonu(context,
                isimler: "Banyo",
                sayfalar: BanyoEkran(),
                iconlar: Icons.bathroom),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}

Widget SinifButonu(BuildContext context,
    {required isimler, required sayfalar, required IconData iconlar}) {
  return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => sayfalar,
            ));
      },
      icon: Icon(
        iconlar,
        color: Colors.black,
      ),
      label: Text(
        isimler,
        style: GoogleFonts.merienda(fontSize: 15, fontStyle: FontStyle.italic),
      ));
}
