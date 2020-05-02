import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x000000),
      body: Center(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Image.asset(
                      'assets/DSCLogo.png',
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 100.0, bottom: 100.0),
                child: Image.asset('assets/DevStackLogo.png'),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      alignment: Alignment.center,
                      height: 50.0,
                      width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(0xFF, 233, 32, 79),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextFormField(
                        //style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Email Id',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (String value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String value) {
                          return value.contains('@')
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      alignment: Alignment.center,
                      height: 50.0,
                      width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(0xFF, 233, 32, 79),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
