import 'dart:convert';
// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:untitled/home.dart';
import 'package:http/http.dart' as http;
// import 'package:url_launcher/link.dart';
// import 'package:url_launcher/url_launcher.dart';


class Login extends StatefulWidget {
  // Future<void> _signInAnonymously() async {
  //   final userCredentials = FirebaseAuth.instance.signInAnonymously();
  // }

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHiddenPassword = true;
  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController _emailcontroller = new TextEditingController();
  TextEditingController _passwordcontroller = new TextEditingController();
  String message = 'Invalid!';
  var errorMessage = "Error!";


  Future<void> loginFunction() async {
     var url = "https://9843-123.000webhostapp.com/backend/get.php";
     http.Response response = await http.post(Uri.parse(url),body: {
       "email": _emailcontroller.text,
       "password": _passwordcontroller.text
     });
     var data = jsonDecode(response.body);

     print(data.toString());


    // final response = await http
    //     .post("http://127.0.0.1/flutter/login.php", body: {
    //   "email": emailcontroller.text,
    //   "password": passwordcontroller.text
    // });
    // print(response.body);
     //  print("apple");
    if (data.length == 1) {
      //goto HomePage
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      //show invalid message
      setState(() {
        message = "Invalid username or password";
      });
    }
  }


  @override
  // void initState() {
  //   loginFunction();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "images/logo.png",
        ),
        title: Text("R.P. Jewellers"),
        backgroundColor: Color(0xff4949e6),
      ),
      body: SingleChildScrollView(

        child: Form(
          key: key,
          child: Column(
            children: [
              Image.asset(
                "images/logo.png",
                height: 250,
              ),
              Image.asset("images/welcome.png"),
              TextFormField(
                controller: _emailcontroller,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Email",
                  //labelText: "Enter your Email"
                ),
                // validator: (value) =>
                //     value.isEmpty ? 'This field cannot be empty' : null,
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _passwordcontroller,
                obscureText: isHiddenPassword,
                // _isObscure,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Password",
                  suffixIcon: InkWell(
                      onTap: _togglePasswordView, child: Icon(Icons.visibility)),
                ),
                // validator: (value) =>
                //     value.isEmpty ? 'This field cannot be empty' : null,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff3d2bd9),
                ),
                child: TextButton(
                  onPressed: () {
                    if (key.currentState.validate()) {
                      loginFunction();
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    }
                  },

                  // // async
                  //  {
                  // User firebaseUser;    //(Firebase code)
                  // await FirebaseAuth.instance.signInWithEmailAndPassword(
                  //     email: _emailcontroller.text,
                  //     password: _passwordcontroller.text);

                  //  _signInAnonymously();
                  //// if (key.currentState.validate()) {
                  // Home();

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => Home(),
                  //     ));
                  // }
                  // else{
                  //   Text(errorMessage);
                  // }

                  // },
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  // color: Color(0xff3d2bd9),
                ),
              ),
              // Text(
              //   message,
              //   style: TextStyle(color: Colors.red, fontSize: 20.0),
              // ),
              Text(
                "or",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                // color: Color(0xff3d2bd9),
                decoration: BoxDecoration(
                  color: Color(0xff3d2bd9),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  // color: Color(0xff3d2bd9),
                ),
              ),
              // TextButton(onPressed: ()async{
              //   final urlWeb ="https://9843-123.000webhostapp.com/home.html";
              // }, child: Text("Web Shakya"))
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    // if(isHiddenPassword== true){
    //   isHiddenPassword=false;
    // }
    // else{
    //   isHiddenPassword= true;
    // }
    isHiddenPassword = !isHiddenPassword;
    setState(() {});
  }
}
