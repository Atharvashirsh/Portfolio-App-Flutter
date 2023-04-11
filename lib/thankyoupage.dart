import 'package:flutter/material.dart';
import 'package:portfolio_app/homepage.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Image.asset(
                  'assets/photo3.png',
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "This is a relaxing zone",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Breathe In, Breathe Out",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Thank you for visiting my profile.",
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text("Return to Home Page"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
