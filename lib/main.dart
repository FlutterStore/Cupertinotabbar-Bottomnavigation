// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> data = [const HomeScreenTab(), const ProfileScreenTab(),const Notification(),const Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Cupertino TabBar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
        body: CupertinoTabScaffold(
          backgroundColor: Colors.green,
          tabBar: CupertinoTabBar(
            backgroundColor: Colors.green,
            // border: Border.all(color: Colors.red, width: 2.0),
            currentIndex: 0,
            onTap: (value) {},
            activeColor: Colors.white,
            iconSize: 25,
            inactiveColor: Colors.black,
            height: 55,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none),
                label: "Notification",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings),
                label: "Setting",
              )
            ],
          ),
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) {
                return data[index];
              },
            );
          },
        )
    );
  }
}

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  const [
          FlutterLogo(style: FlutterLogoStyle.horizontal,size: 100,),
          Text(
            "This is Home Page",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class ProfileScreenTab extends StatelessWidget {
  const ProfileScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FlutterLogo(style: FlutterLogoStyle.horizontal,size: 100,),
          Text(
            "This is Profile Page",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
class Notification extends StatelessWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FlutterLogo(style: FlutterLogoStyle.horizontal,size: 100,),
          Text(
            "This is Notification Page",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FlutterLogo(style: FlutterLogoStyle.horizontal,size: 100,),
          Text(
            "This is Setting Page",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}