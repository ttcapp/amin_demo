import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';
void main() {
  runApp(AmarApp());
}
class AmarApp extends StatelessWidget {
  const AmarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SlideDrawer(
        offsetFromRight: 320,
        duration: Duration(milliseconds: 2000),
        headDrawer: Container(
          height: 200,
          child: Image.network(("https://pixabay.com/photos/lotus-flower-lily-pad-pond-1205631/")),
        ),
        backgroundColor: Colors.blue,
        items: [
          MenuItem('Home',
              icon: Icons.account_balance_sharp,
              onTap: (){}),
          MenuItem('Project',
              icon: Icons.visibility,
              onTap: (){}),
          MenuItem('Favourite',
              icon: Icons.account_balance,
              onTap: (){}),
          MenuItem('Profile',
              icon: Icons.account_circle,
              onTap: (){}),
          MenuItem('Setting',
              icon: Icons.ac_unit,
          onTap: (){}),
        ],
        child: AmarHomePage(),
      ),
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
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
        centerTitle: true,
        title: Text("First App"),
      ),
    );
  }
}
