import 'package:flutter/material.dart';
import 'package:transport_app/my_flutter_app_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(
            Icons.sort_outlined,
            color: Colors.white,
          ),
          title: Text('Create Package',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.search,
              size: 30.0
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 200.0, top: 30.0),
                  child: Text('Transport Medium',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                  ),)),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey.shade100
                      ),
                        child: Icon(MyFlutterApp.car_side,
                        size: 40.0,
                        color: Colors.grey.shade400,)
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey.shade100
                      ),
                      child: Icon(
                        MyFlutterApp.plane_outline,
                        size: 40.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.cyanAccent.shade100
                      ),
                      child: Icon(
                        MyFlutterApp.truck,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 310.0, top: 50.0),
                child: Text('From: ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
