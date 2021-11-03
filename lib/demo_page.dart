import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle),
            SizedBox(width: 5,),
            Text("Demo Page"),
          ],
        ),

      ),
      body: Container(

        color: Colors.blue,
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/icon.png")
                ),
                    borderRadius: BorderRadius.circular(170)
              ),

            ),
            Text("Second Image", textAlign: TextAlign.center,style: TextStyle(
              color: Colors.purple,fontSize: 30,fontWeight:FontWeight.normal
            ),),
            Container(
              height: 200,
              width: 200,

              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/icon.png")
                  ),
                  borderRadius: BorderRadius.circular(170)
              ),

            ),
            Text("Second Image", textAlign: TextAlign.center,style: TextStyle(
                color: Colors.purple,fontSize: 30,fontWeight:FontWeight.normal
            ),),

          ],
        ),
      ),
    );
  }
}
