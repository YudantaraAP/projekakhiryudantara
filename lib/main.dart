import 'dart:ui';

import 'package:flutter/material.dart';

//kasus yang diambil
//membuat tabbar yang berisi foto, nama, NIM, dan Program studi.

void main() {
  //-jalankan aplikasi dengan mengetikan kode program runApp.
  //-nama program saya MyApp
  runApp(MyApp());
}

//aplikasi saya ini menggunkan satelesswidget
//buat class MyApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

//buat kelas HomePage untuk tabbar
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //DefaultTabController untuk mengeksekusi bottom tabbar
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        //buat appbar, didalam appbar masih ada tabbar
        //gunakan backgroundcolor untuk merubah warna
        appBar: AppBar(
          backgroundColor: Colors.black45,
          //title Text karena value berisi string
          title: Text("Yudantara AP 195411082"),
          //untuk judul agar terletak ditengah, menggunkan center title
          centerTitle: true,
          //buat bottom tabbar pada kasus saya ini saya menggunakan 4 length
          bottom: TabBar(
            tabs: [
              //-tab 1 berisi foto gambar diri dalam icon kamera
              //-agar lebih rapi setiap tab ditambahkan widget agar lebih rapi
              Tab(
                icon: Icon(Icons.camera_enhance),
              ),
              //tab 2 berisi String dengan text "Nama"
              Tab(text: "Nama"),
              //tab 3 berisi String dengan text "NIM"
              Tab(text: "NIM"),
              //tab 4 berisi String dengan text "Program Studi"
              Tab(text: "Program Studi"),
            ],
          ),
        ),
        //menampilkan hasil keluaran dari dari tabbar
        body: TabBarView(children: [
          Center(
              child: Image(
            image: AssetImage('images/yudantara.jpeg'),
          )),
          Center(child: Text("YUDANTARA ARWANDA PUTRA")),
          Center(child: Text("195411082")),
          Center(child: Text("INFORMATIKA")),
        ]),
      ),
    );
  }
}
