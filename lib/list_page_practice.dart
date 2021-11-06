import 'package:flutter/material.dart';

class ListPractice extends StatefulWidget {
  const ListPractice({Key? key}) : super(key: key);

  @override
  _ListPracticeState createState() => _ListPracticeState();
}


class _ListPracticeState extends State<ListPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doll"),
      ),
      body: Column(
        children: [
          Container(
            width: 150,
            height: 100,
          )
        ],
      ),
    );
  }
}
