import 'package:flutter/material.dart';
import 'package:transport_app/booking.dart';
import 'package:transport_app/my_flutter_app_icons.dart';
import 'package:transport_app/custom.dart';
import 'dart:math' as math; // import this

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDateSelected = false;
  DateTime birthDate; // instance of DateTime
  String birthDateInString;
  final TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff006BC9),
          leading: Icon(
            Icons.sort_outlined,
            color: Colors.white,
          ),
          title: Text('Create Package',
            style: TextStyle(
                fontSize: 22.0,
                letterSpacing: 0.8,
                fontFamily: 'DMSans',
                // fontWeight: FontWeight.bold
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
                  margin: EdgeInsets.only(right: 190.0, top: 50.0),
                  child: Text('Transport Medium',
                    style: TextStyle(
                        fontSize: 23.0,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff000000)
                    ),)),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 93.0,
                        width: 115.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: const Color(0xffF9F9F9)
                        ),
                        child: Transform(
                          transform: Matrix4.rotationY(math.pi),
                          alignment: Alignment.center,
                          child: Icon(MyFlutterApp.car_side,
                              size: 40.0,
                              color: const Color(0xffB6BABB)),
                        ),
                    ),
                    Container(
                      height: 93.0,
                      width: 115.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color(0xffF9F9F9)
                      ),
                      child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(-20 / 360),
                        child: Icon(
                          MyFlutterApp.plane_outline,
                          size: 40.0,
                          color: const Color(0xffB6BABB),
                        ),
                      ),
                    ),
                    Container(
                      height: 93.0,
                      width: 115.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color(0xff95F4FA)
                      ),
                        child: Transform(
                          transform: Matrix4.rotationY(math.pi),
                          alignment: Alignment.center,
                          child: Icon(
                            MyFlutterApp.truck,
                            size: 40.0,
                            color: Colors.white,
                          ),
                        ),
                      )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 300.0, top: 50.0),
                child: Text('From : ',
                  style: TextStyle(
                      fontSize: 23.0,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff000000)
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      child: TextFormField(
                        initialValue: 'California, Usa',
                        style: TextStyle(
                            fontSize: 20.0,
                          fontFamily: 'DMSans'
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(CustomApp.telegram_plane),
                          // labelText: 'California, USA',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'DMSans'
                        ),
                        onTap: () => _pickDate(),
                        controller: _date,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.calendar_today)
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 330.0, top: 40.0, bottom: 10.0),
                      child: Text('To :',
                        style: TextStyle(
                            fontSize: 23.0,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff000000)
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        initialValue: 'Toronto canada',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'DMSans'
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            CustomApp.telegram_plane
                          )
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 20.0
                        ),
                        onTap: () => _pickDate(),
                        controller: _date,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.calendar_today)
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 65.0, vertical: 30.0),
                          child: FlatButton(
                              color: const Color(0xff006BC9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(23.0)
                                )
                              ),
                              onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Booking()));
                          }, child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text('Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                            ),),
                          )),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
  void _pickDate() async {
    final datePick = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      // helpText: 'Help Text',
      initialEntryMode: DatePickerEntryMode.calendar,
      initialDatePickerMode: DatePickerMode.year,
      firstDate: new DateTime(1900),
      lastDate: new DateTime(2100),
    );
    if (datePick != null && datePick != birthDate) {
      print(datePick);
      setState(() {
        birthDate = datePick;
        isDateSelected = true;

        // put it here
        birthDateInString =
        "${birthDate.day}/${birthDate.month}/${birthDate.year}"; // 08/14/2019
        _date.text = birthDateInString;
      });
    }
  }
}
