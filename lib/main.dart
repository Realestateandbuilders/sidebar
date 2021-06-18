import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

/// App Widget
class MyApp extends StatefulWidget {

  /// Initialize app
  MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// Widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// Home
      home: Homepage(),
    );
  }
}


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "Real Estate And Builders",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"),
                ),
                accountName: Text(
                  "Admin",
                  style: Theme.of(context).textTheme.headline6,
                ),
                accountEmail: Text(
                  "realestateandbuilders@property.com",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            ListTile(
              title: Text('login'),
              leading: Icon(Icons.login),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Contact us'),
              leading: Icon(Icons.contact_phone),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Add Property'),
              leading: Icon(Icons.add),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Sell'),
              leading: Icon(Icons.point_of_sale),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Rent'),
              leading: Icon(Icons.car_rental),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Log out'),
              leading: Icon(Icons.logout),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Plots'),
              leading: Icon(Icons.house),
              onTap: () {
                print("Clicked");
              },
            ),
            ListTile(
              title: Text('Backup'),
              leading: Icon(Icons.backup),
              onTap: () {
                print("Clicked");
              },
            ),
          ],
        ),
      ),
    );
  }
}
