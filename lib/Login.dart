import 'package:authui/ForgotPassword.dart';
import 'package:flutter/material.dart';
import 'package:authui/Signup.dart';
import 'package:authui/main1.dart';
import 'Signup_Design.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {




  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: new LinearGradient(
                colors: [Colors.purpleAccent, Colors.orange[200]])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(children: [
            Container(
              height: height * 0.15,
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.15),
              height: height * 0.85,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/background.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: SingleChildScrollView(
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        SizedBox(
                          height: 15,
                        ),
                        CircleAvatar(
                          radius: 43.0,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/logo.png'),
                            radius: 40,
                          ),
                        ),
                        Text(
                          'Curriculum Vitae',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Center(
                          child: Container(
                            height: 1,
                            width: 0.8,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15, left: 10, right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: buildInputDecoration(Icons.email, "Email"),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15, left: 10, right: 10),
                          child: TextFormField(

                            obscureText: true,
                            keyboardType: TextInputType.text,
                            decoration:
                            buildInputDecoration(Icons.lock, "Password"),

                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        SizedBox(
                            width: 150,
                            height: height * 0.05,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formkey.currentState.validate()) {
                                  print("Successful");
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => MainPage()));
                                  return;
                                } else {
                                  print("Unsuccessful");
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 20.0),
                                primary: Colors.deepPurpleAccent,
                                shape: StadiumBorder(),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )

                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                            "Forgot Password?".toUpperCase(),
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.deepPurpleAccent,
                                //  fontWeight: FontWeight.bold,
                                letterSpacing: 1.7),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Center(
                          child: Container(
                            height: 1,
                            width: 0.8,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "Don't Have Account ?".toUpperCase(),
                          style: TextStyle(
                              fontSize: 16,
                              // color: Colors.blue,
                              //  fontWeight: FontWeight.bold,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FormPage()));
                          },
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  gradient: new LinearGradient(
                                      colors: [Colors.deepPurpleAccent, Colors.deepPurpleAccent]),
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Colors.purple,
                                        offset: Offset(2, 2))
                                  ]),
                              child: Text(
                                "Signup".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    letterSpacing: 1.7),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
