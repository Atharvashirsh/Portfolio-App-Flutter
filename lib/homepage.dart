import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';
import 'thankyoupage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('My Portfolio'),
            CircleAvatar(
              backgroundImage: AssetImage('assets/photo.jpg'),
            )
          ]),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/photo2.jpg'),
                    radius: 75,
                  ),
                ),
                const Text(
                  'Hello',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.purple),
                ),
                const Text(
                  "I'm Atharvashirsh Tiwary",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.purple),
                ),
                const SizedBox(height: 20),
                const Text(
                  "I'm a Third Year IT Student at International Institute of Information Technology, Pune. I'm a Web Developer but since I made this portfolio app, \nAm I a App Developer also? Who knows :)",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blueGrey),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  color: Colors.blueAccent,
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      iconColor: Colors.blueAccent,
                      leading: Icon(
                        Icons.perm_identity_outlined,
                        size: 40,
                      ),
                      title: Text(
                        "LinkedIn",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Link to my LinkedIn Profile",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(Icons.launch),
                      tileColor: Colors.white,
                      onTap: () {
                        launch(
                            'https://www.linkedin.com/in/atharvashirsh-t-99648a250/');
                      },
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      iconColor: Colors.black,
                      leading: Icon(
                        Icons.perm_identity_outlined,
                        size: 40,
                      ),
                      title: Text(
                        "GitHub",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Link to my Github Profile",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(Icons.launch),
                      tileColor: Colors.white,
                      onTap: () {
                        launch('https://github.com/Atharvashirsh');
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, spreadRadius: 1, blurRadius: 1)
                      ]),
                  child: ElevatedButton(
                      child: const Text("Feeling Good!"),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThankYou()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.white,
                          shadowColor: Colors.transparent)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
