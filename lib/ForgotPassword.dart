import 'package:flutter/material.dart';
import 'Signup_Design.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {





  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            gradient:
            new LinearGradient(colors: [Colors.purpleAccent, Colors.orange[200]])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                height: height * 0.15,
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.15),
                height: height * 0.85,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/background.jpg'), fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: SingleChildScrollView(
                  child: Form(


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),

                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/logo.png'),
                            radius: 40,

                          ),
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        Text(
                          'Reset Password',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman',
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration:buildInputDecoration(Icons.email,"Email"),

                          ),
                        ),

                        SizedBox(
                            width: 150,
                            height: height * 0.05,
                            child: ElevatedButton(
                              onPressed: () {
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 20.0),
                                primary: Colors.deepPurpleAccent,
                                shape: StadiumBorder(),
                              ),
                              child: const Text(
                                'Reset',
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )

                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
