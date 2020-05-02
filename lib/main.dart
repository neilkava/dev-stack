import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(CustomNeil());

class CustomNeil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomNeil',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
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
                padding: EdgeInsets.only(top: 150.0, bottom: 100.0),
                child: Image.asset('assets/DevStackLogo.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(100.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 80.0,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(0xFF, 233, 32, 79),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 27.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
