import 'package:flutter/material.dart';
import 'package:untitled/home_page.dart';

class MySideBar extends StatelessWidget {
  const MySideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Murotov Aziz'),
            accountEmail: Text("aziz@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png",
                  fit: BoxFit.cover,
                  height: 90,
                  width: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: NetworkImage(
                      "https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Friends'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                height: 20,
                width: 20,
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
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
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
