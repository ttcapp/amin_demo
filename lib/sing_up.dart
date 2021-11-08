import 'package:flutter/material.dart';

String _email= "alaminrafi9521@gmaiil.com";
String _password= "1234";
final _formKey=GlobalKey<FormState>();


class singup extends StatefulWidget {
  const singup({Key? key}) : super(key: key);

  @override
  _singupState createState() => _singupState();
}

class _singupState extends State<singup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Sing Up"),
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.pink,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                height: 30,
                width: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffix: Icon(Icons.email),
                  hintText: "Enter Your Email",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.black54),
                  )

                ),
                validator: (text){
                  if(text==null || text.isEmpty){
                    return "This Field is empty";
                  }
                },
              ),

              TextFormField(
                decoration: InputDecoration(
                    suffix: Icon(Icons.remove_red_eye),
                    hintText: "Enter Your Password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black54),
                    )

                ),
                validator: (text){
                  if(text==null || text.isEmpty){
                    return "This Field is empty";
                  }
                },
              ),
            ],
          ),
        ),

        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage("assets/image/icon.png")

          ),
          borderRadius: BorderRadius.circular(180)
        ),
      ),

    );
  }
}
