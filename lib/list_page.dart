import 'package:flutter/material.dart';

class listPage extends StatefulWidget {
  const listPage({Key? key}) : super(key: key);

  @override
  _listPageState createState() => _listPageState();
}
List <String> stdList=[
  "Alamin",
  "Dipto",
  "Tamjid",
  "Rafi",
  "Alamin",
  "Dipto",
  "Tamjid",
  "Rafi"
];

class _listPageState extends State<listPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Page"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: stdList.length,
                itemBuilder: (context,index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepPurple,
                      height: 50,
                      width: 150,
                      child: Text(stdList[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.lime,
                        fontWeight: FontWeight.bold,fontSize: 30),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
