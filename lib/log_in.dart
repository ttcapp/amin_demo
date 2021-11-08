import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

String _email= "alaminrafi9521@gmaiil.com";
String _password= "1234";
final _formKey=GlobalKey<FormState>();


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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
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
            TextFormField(
              validator: (text){
                if(text==null || text.isEmpty){
                  return "This field is empty";
                }
              },
              cursorColor: Colors.black54,
              decoration: InputDecoration(
                suffix: Icon(Icons.email),
                hintText: "Enter Your Email",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black54)
                )

              ),

      ),
                SizedBox(height: 30,),
                TextFormField(
                  validator: (text){
                    if(text==null || text.isEmpty){
                      return "This field is empty";
                    }
                  },
                  cursorColor: Colors.black54,
                  decoration: InputDecoration(
                      suffix: Icon(Icons.remove_red_eye),
                      hintText: "Enter Your Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.black54)
                      )

                  ),

                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){
                  _formKey.currentState!.validate();
                },
                    child: Text("Log In")
                ),
              ],
      ),
          ),
        ),
      ),
    );
  }
}



