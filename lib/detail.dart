import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final title;
  final deskripsi;
  final gambar;
  DetailPage(this.title, this.deskripsi, this.gambar);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Image.network(widget.gambar, height: 200),
          Text(widget.deskripsi)
        ],
      ),
    );
  }
}
