import 'package:aplikasi_bangundatar/page/lingkaran_page.dart';
import 'package:aplikasi_bangundatar/page/persegi_page.dart';
import 'package:aplikasi_bangundatar/page/persegipanjang_page.dart';
import 'package:aplikasi_bangundatar/page/segitiga_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF11D24F)),
    body: ListView(
      children: [
        Row(
          children: [
            Expanded(child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
              },
              child: CostomMenu (imageAsset: "assets/persegi.jpg",
                  title: "Persegi"),
            )),
            Expanded(child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
              },
              child: CostomMenu (imageAsset: "assets/segitiga.png",
                  title: "Segitiga"),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage()));
              },
              child: CostomMenu (imageAsset: "assets/lingkaran.png",
                  title: "Lingkaran"),
            )),
            Expanded(child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjangPage()));
              },
              child: CostomMenu (imageAsset: "assets/persegi_panjang.jpg",
                  title: "Persegi Panjang"),
            )),
          ],
        ),
      ],
    ),
    );
  }
}

class CostomMenu extends StatelessWidget {
  const CostomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
      color: Colors.green.shade300,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Image.asset(imageAsset, height: 100),
        Text(title, style: TextStyle(color: Colors.white),
        ),
        ],
      ));
  }
}
