import 'package:flutter/material.dart';
import 'package:flutterapp/HalamanKetiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class in Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HalamanHome(), debugShowCheckedModeBanner: false,
    );
  }
}

class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Column (
          children: <Widget>[
            Text (
              'Ini adalah halaman home',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text('Nama Lengkap : Ifan Bagastian Fauzi'),
            Text('Kelas : XII RPL 3'),
            Text('No.Absen : 01'),

            new MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPertama() ));
                }, child: Text ('Halaman Pertama'),
                  color: Colors.grey,
                  textColor: Colors.white,
                ),

            new MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua() ));
                }, child: Text ('Halaman Kedua'),
                  color: Colors.black12,
                  textColor: Colors.white,
            ),

            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKetiga() ));
              }, child: Text ('Halaman Ketiga'),
              color: Colors.black,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text ('Ini adalah Halaman Pertama'),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text ('Ini adalah Halaman Kedua'),
      ),
    );
  }
}



