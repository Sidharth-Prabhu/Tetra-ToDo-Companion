import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'TETRA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              'ToDo List App',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            // currentAccountPicture: CircleAvatar(
            //   backgroundImage: AssetImage('/assets/images/tetra.png'),
            //   foregroundImage: AssetImage('/assets/images/tetra.png'),
            // ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
          ),
          ListTile(
            leading: Icon(Icons.task),
            title: Text('My Tasks'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text('About App'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help & Feedback'),
            onTap: () {
              _launchURL("https://linktr.ee/frisscomedia");
            },
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('More Apps'),
            onTap: () {
              _launchURL("https://play.google.com/store/apps/dev?id=8331228622407376932");
            },
          )
        ],
      ),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}
