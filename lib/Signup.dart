import 'package:flutter/material.dart';
import 'Signup_Design.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {



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

                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 60,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman',
                          ),
                        ),


                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: buildInputDecoration(Icons.person,"Firstname"),

                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: buildInputDecoration(Icons.person,"Middle Name"),

                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: buildInputDecoration(Icons.person,"Lastname"),

                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: buildInputDecoration(Icons.calendar_month_outlined,"Age"),

                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration:buildInputDecoration(Icons.email,"Email"),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration:buildInputDecoration(Icons.phone,"Phone No"),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            decoration:buildInputDecoration(Icons.lock,"Password"),


                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            decoration:buildInputDecoration(Icons.lock,"Confirm Password"),

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
                                'Submit',
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
