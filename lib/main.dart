import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
          title: Text("First App"),

        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){

                },
                    child: Text("Button One"),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}
