import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'package:untitled/second_page.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SlideDrawer(
        items: [
          MenuItem('Home', onTap: (){},
          icon: Icons.account_balance ),
          MenuItem('Project', onTap: (){},
          icon: Icons.announcement_outlined),
          MenuItem('Favourite', onTap: (){},
          icon: Icons.ac_unit),
          MenuItem('Profile', onTap: (){}),
          MenuItem('Setting', onTap: (){}),
        ],
        child: MyHomePage(),
      ),

    );
  }
}
