import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar:AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'ListTile & ListView',
            style: TextStyle(
              color: Colors.white)
              ),
        ),
        body:Container(
          padding: EdgeInsets.all(12),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage("assets/images/pexels.jpg"),
              fit: BoxFit.fill 
              )
          ),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                    Colors.blue,
                    Colors.red,
                    Colors.yellow
                    ],
                  ),
                ),
                //height: 100,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'Element 1',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 20
                      ),
                    ),
                  subtitle: Text(
                    'Subtitle 1 for element 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                      ),
                    ),
                    trailing: Icon(
                      Icons.info, 
                      color:Colors.white
                      ),
                    onTap: (){
                      print("Element 1");
                     }, 
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                    Colors.blue,
                    Colors.red,
                    Colors.yellow
                    ],
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'Element 2',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 20
                      ),
                    ),
                  subtitle: Text(
                    'Subtitle 2 for element 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                      ),
                    ),
                    trailing: Icon(
                      Icons.info, 
                      color:Colors.white
                      ),
                    onTap: (){
                      print("Element 1");
                     }, 
                ),
              ),
            ],
          ),
        ) 
      ),
    );
  }
}