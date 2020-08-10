import 'package:belajar_gusti/detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Berita',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('SNIP'),
      ),
      body: Wrap(
        children: <Widget>[
          CardBerita(
            title: Text('Politik'),
            url: DetailPage(
                'Politik',
                'Politik adalah salah satu pembanggun bangsa',
                'https://asset.kompas.com/crops/0PoIDFlvDtPyaYQ7Rfogmi-S-T0=/11x13:480x326/750x500/data/photo/2019/12/28/5e075854350bc.jpg'),
            icon: Icons.memory,
            color: Colors.brown,
          ),
          CardBerita(
            title: Text('Olahraga'),
            url: DetailPage(
                'Olahraga',
                'Olahraga itu mantap yang adalah salah satu pembanggun bangsa',
                'https://asset.kompas.com/crops/0PoIDFlvDtPyaYQ7Rfogmi-S-T0=/11x13:480x326/750x500/data/photo/2019/12/28/5e075854350bc.jpg'),
            icon: Icons.home,
            color: Colors.red,
          ),
          CardBerita(
            title: Text('Politik'),
            url: '',
            icon: Icons.memory,
            color: Colors.brown,
          ),
        ],
      ),
    );
  }
}

class CardBerita extends StatelessWidget {
  var title;
  var icon;
  var url;
  var color;
  CardBerita({this.title, this.icon, this.url, this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => url,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Icon(icon, color: color, size: 30),
            title,
          ],
        ),
      ),
    );
  }
}
