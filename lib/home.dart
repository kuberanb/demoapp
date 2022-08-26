import 'package:flutter/material.dart';
import 'package:login/login.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Home '),
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, right: 30, left: 15, bottom: 30),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/man.jpg'),
                      radius: 30),
                ),
                Text(
                  'Raju P',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Image(image: AssetImage('assets/images/person.jpg')),
            ),

///////////////////////////////////////////////////////////////////////////////////////

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, right: 30, left: 15, bottom: 30),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/man.jpg'),
                      radius: 30),
                ),
                Text(
                  'Akmal P',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Image(image: AssetImage('assets/images/dayne.jpg')),
            ),Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, right: 30, left: 15, bottom: 30),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/man.jpg'),
                      radius: 30),
                ),
                Text(
                  'Prithviraj A',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Image(image: AssetImage('assets/images/person.jpg')),
            )
          

          ],
        ),

// ///////////////////////////////////////////////////////////////////////////////

      ),
    );
  }

  signout(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (route) => false);
  }
}
