import 'package:amin_demo/demo_page.dart';
import 'package:amin_demo/list_page.dart';
import 'package:amin_demo/log_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() {
  runApp(AmarApp());
}

double conHeight=50;
double conWidth=50;

class AmarApp extends StatelessWidget {
   AmarApp({Key? key}) : super(key: key);

  final navigatorKey=GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: SlideDrawer(
        offsetFromRight: 150,
        duration: Duration(milliseconds: 20),
        headDrawer: Container(
          height: 200,
          child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg",
            fit: BoxFit.fitWidth,),
        ),
        backgroundColor: Colors.blue,
        items: [
          MenuItem('Home',
              icon: Icons.account_balance_sharp,
              onTap: (){}),
          MenuItem('demo Page',
              icon: Icons.visibility,
              onTap: (){
            navigatorKey.currentState!.push(
              MaterialPageRoute(builder: (context)=>DemoPage())
            );
              }),
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
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context)=>listPage()));
              },

              child: Text("Go To Sign In")
          ),

          InkWell(
            onTap: () {
              setState(() {
                conHeight=150;
                conWidth=150;
              });
            },
            onDoubleTap:() {
              setState(() {
                conHeight=15;
                conWidth=150;
              });
            },
            child: AnimatedContainer(
              height: conHeight ,
                width: conWidth ,
              color: Colors.greenAccent,
              duration: Duration(milliseconds: 4000),

            ),
          )
        ],
      ),
    );
  }
}
