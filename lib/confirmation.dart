import 'package:flutter/material.dart';

class Confirmation extends StatefulWidget {
  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff006BC9),
        title: Text('Confirmation',
          style: TextStyle(
              fontSize: 22.0,
              letterSpacing: 0.8,
              fontFamily: 'DMSans'
          ),),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundColor: const Color(0xff95F4FA),
          )
        ],
      ),
    );
  }
}
