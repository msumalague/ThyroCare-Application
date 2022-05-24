import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:thyroidclass/screen/UserProfile/ProfilePage.dart';
import 'package:thyroidclass/screen/Login/LoginScreen.dart';
import 'package:thyroidclass/screen/Authentication/Auth.dart';

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
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ));
              }),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () => null,
          ),
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
