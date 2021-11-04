import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String img1="https://cdn.pixabay.com/photo/2020/06/07/07/03/girl-5269312_960_720.jpg";
  String img2="https://cdn.pixabay.com/photo/2020/12/13/16/37/woman-5828785_960_720.jpg";
  String img3="https://cdn.pixabay.com/photo/2018/01/15/08/34/woman-3083453_960_720.jpg";
  String img4="https://cdn.pixabay.com/photo/2017/05/18/08/13/womens-2322890_960_720.jpg";
  bool imgVis=false;
  double imgHeight=150;
  double imgWidth=150;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: Text("Demo"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {

           },
          ),
        ),

        body: SingleChildScrollView(
          child: Center(
            child: Column(

              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(50),
                        child: Container(
                          height: imgHeight*2,
                          width: imgWidth*2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Image.network(img1),


                        ),
                      ),
                      
                    ],
                    
                  ),
                ),
                ElevatedButton(
                  child: Text("Image 1"),
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
                ElevatedButton(

                    onPressed:(){
                },
                    child: Text("Image 2")
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
