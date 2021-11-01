import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,

            decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage("assets/image/icon.png")
              )

            ),
          )
        ],
      ),
      )
    );
  }
}



