import 'package:flutter/material.dart';
import 'detailbola_screen.dart';

class ListBolaScreen extends StatelessWidget {
  final List<Map<String, dynamic>> bolaData = [
    {
      "namaclub": "Persib",
      "kotaclub": "Bandung",
      "image": "assets/images/persib.jpeg",
      "gallery": [
        "assets/images/persib2.jpeg",
        "assets/images/persib3.jpg",
        "assets/images/persib4.jpg"
      ],
      "desc":
          "Persatuan Sepak Bola Indonesia Bandung (atau disingkat Persib) adalah klub sepak bola profesional Indonesia yang berbasis di Kota Bandung, Jawa Barat."
    },
    {
      "namaclub": "Pesija",
      "kotaclub": "Jakarta",
      "image": "assets/images/persija.jpeg",
      "gallery": [
        "assets/images/persija1.jpeg",
        "assets/images/persija2.jpg",
        "assets/images/persija4.jpg",
      ],
      "desc":
          "Persatuan Sepak Bola Indonesia Jakarta adalah klub sepak bola profesional Indonesia yang berbasis di Jakarta, Indonesia."
    },
    {
      "namaclub": "PSS Sleman",
      "kotaclub": "Yogyakarta",
      "image": "assets/images/pss1.jpg",
      "gallery": [
        "assets/images/pss2.jpg",
        "assets/images/pss3.jpg",
        "assets/images/pss4.jpg",
      ],
      "desc":
          "Perserikatan Sepak Bola Sleman atau disebut PSS Sleman merupakan klub sepak bola profesional Indonesia yang berbasis di Kabupaten Sleman, Yogyakarta."
    },
    {
      "namaclub": "Bali United ",
      "kotaclub": "bali",
      "image": "assets/images/bali1.jpg",
      "gallery": [
        "assets/images/bali2.jpeg",
        "assets/images/bali3.jpg",
        "assets/images/bali4.jpg",
      ],
      "desc":
          "Bali United Football Club merupakan klub sepak bola profesional Indonesia yang berbasis di Kabupaten Gianyar, Bali."
    },
    {
      "namaclub": "Persipasi",
      "kotaclub": "Bandung",
      "image": "assets/images/persipasi1.png",
      "gallery": [
        "assets/images/persipasi2.jpeg",
        "assets/images/persipasi3.jpeg",
        "assets/images/persipasi4.jpeg",
      ],
      "desc":
          "Persipasi Kota Bekasi (atau singkatan dari Persatuan Sepakbola Indonesia Patriot Bekasi) adalah tim sepak bola Indonesia yang bermarkas di Stadion Patriot Chandrabhaga, Kota Bekasi, Jawa Barat."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sepak Bola'),
        backgroundColor: Color.fromARGB(255, 244, 157, 200),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: bolaData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailBolaScreen(
                        namaclub: bolaData[index]["namaclub"],
                        kotaclub: bolaData[index]["kotaclub"],
                        image: bolaData[index]["image"],
                        gallery: bolaData[index]["gallery"],
                        desc: bolaData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(bolaData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    bolaData[index]["namaclub"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
