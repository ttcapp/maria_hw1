import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

String img1="https://cdn.pixabay.com/photo/2020/06/07/07/03/girl-5269312_960_720.jpg";
String img2="https://cdn.pixabay.com/photo/2020/12/13/16/37/woman-5828785_960_720.jpg";
String img3="https://cdn.pixabay.com/photo/2018/01/15/08/34/woman-3083453_960_720.jpg";
String img4="https://cdn.pixabay.com/photo/2017/05/18/08/13/womens-2322890_960_720.jpg";
bool imgVis=false;
double imgHeight=150;
double imgWidth=150;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: Text("First App"),

        ),

        body: Center(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [


                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: Container(
                        height: imgHeight*2,
                        width: imgWidth*2,
                        decoration: BoxDecoration(

                        ),
                        child: Image.network(img1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: Container(
                        height: imgHeight*2,
                        width: imgWidth*2,
                        decoration: BoxDecoration(

                        ),
                        child: Image.network(img2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: Container(
                        height: imgHeight*2,
                        width: imgWidth*2,
                        decoration: BoxDecoration(

                        ),
                        child: Image.network(img3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: Container(
                        height: imgHeight*2,
                        width: imgWidth*2,
                        decoration: BoxDecoration(

                        ),
                        child: Image.network(img4),
                      ),
                    ),

                  ],


                ),
              ),
              ElevatedButton(
                child: Text("Button 1"),

                  onPressed: (){

                  },
              ),
              Visibility(
                visible: imgVis=true,

                  child: SingleChildScrollView(
                    child: Container(
                      child: Image.network(img4),height: 150,width: 200,
                    ),
                  ),
              ),
            ],
          ),
        ),

      ),
    );

  }
}
