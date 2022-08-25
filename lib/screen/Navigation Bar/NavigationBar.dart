import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:thyroidclass/screen/Login/LoginScreen.dart';
import 'package:thyroidclass/screen/Navigation%20Bar/About%20Us.dart';
import 'package:thyroidclass/screen/Navigation%20Bar/Library/Library.dart';
import 'package:thyroidclass/screen/Navigation%20Bar/Policy.dart';
import 'package:thyroidclass/screen/Navigation%20Bar/User%20Profile/pages/profile_page.dart';

class NavBar extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: Text(
                'Welcome \nBack!',
                style: TextStyle(
                    fontFamily: 'FredokaOne',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  color: Colors.teal,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://i.ibb.co/2ddtVjp/NavBar.jpg')))),
          ListTile(
              leading: Icon(Icons.book),
              title: Text('Library'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Library(),
                  ))),
          ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUs(),
                  ))),
          ListTile(
              leading: Icon(Icons.description),
              title: Text('Policy'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Policy(),
                  ))),
          Divider(),
          ListTile(
            title: Text('Sign Out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (c) => LoginScreen()),
                  (r) => false);
            },
          ),
        ],
      ),
    );
  }
}
