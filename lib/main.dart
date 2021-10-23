import 'package:flutter/material.dart';

void main() {
  runApp(AmarApp());
}
class AmarApp extends StatelessWidget {
  const AmarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AmarHomePage(),
    );
  }
}
class AmarHomePage extends StatefulWidget {
  const AmarHomePage({Key? key}) : super(key: key);

  @override
  _AmarHomePageState createState() => _AmarHomePageState();
}

class _AmarHomePageState extends State<AmarHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("First App"),
      ),
    );
  }
}
