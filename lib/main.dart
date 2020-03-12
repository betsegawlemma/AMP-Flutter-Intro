import 'package:flutter/material.dart';

void main() {
  runApp(BasicWidgets());
}

class BasicWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          title: Text("Home"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ],
          flexibleSpace: SafeArea(
            child: Icon(
              Icons.photo_camera,
              size: 75.0,
              color: Colors.white70,
            ),
          ),
          bottom: PreferredSize(
            child: Container(
                color: Colors.teal,
                height: 75.0,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'AppBar Bottom',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            preferredSize: Size.fromHeight(75.0),
          ),
        ),
        body: Center(
          child: Text('Scaffold Body'),
        ),
        bottomNavigationBar: Text("Bottom Nav Bar"),
        drawer: Drawer(
          child: Center(
            child: Text("Drawer"),
          ),
        ),
      ),
    );
  }
}
