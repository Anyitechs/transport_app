import 'package:flutter/material.dart';
import 'package:transport_app/confirmation.dart';
class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  String _location = 'Select gift destination city';
  bool selected = false;
  List <String> places = [
    'Abuja','Lagos', 'PortHarcourt'];
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff006BC9),
        title: Text('Booking Information',
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
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 12.0, right: 12.0, top: 40.0),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // color: Colors.red,
                  color: const Color(0xffF9F9F9),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Icon(
                        Icons.calendar_today
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('Wed 26 march 2020, 5:30pm',
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 19.0
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 12.0, right: 12.0, top: 18.0),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // color: Colors.red,
                  color: const Color(0xffF9F9F9),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Icon(
                        Icons.set_meal_outlined,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 70.0),
                      child: Text(
                        'Weight(Tones)',
                        style: TextStyle(
                          fontSize: 19.0
                        ),
                      ),
                    ),
                    Container(
                      height: 25.0,
                      width: 28.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff95F4FA),
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15.0, right: 13.0),
                        child: IconButton(
                          iconSize: 15.0,
                          color: Colors.white,
                            icon: Icon(Icons.add),
                            onPressed: () => print('hello')
                        ),
                      ),
                    ),
                    Text('1.0'),
                    Container(
                      height: 25.0,
                      width: 28.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xff95F4FA),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.add), onPressed: () => print('hello')),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 18.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffF9F9F9),
                    // color: Colors.red,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(
                      //   Icons.local_printshop_rounded
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12.0),
                        child: new DropdownButton<String>(
                          autofocus: true,
                          isExpanded: true,
                          hint: Text(_location,style: TextStyle(fontWeight: FontWeight.bold),),
                          underline: SizedBox(),
                          items: places.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value, style: TextStyle(color: Colors.black),),
                            );
                          }).toList(),
                          onChanged: (_) {
                            print(places.indexOf(_));
                            num = places.indexOf(_);
                            _location = _;
                            selected = true;
                            setState(() {

                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 18.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffF9F9F9),
                    // color: Colors.red,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12.0),
                        child: new DropdownButton<String>(
                          autofocus: true,
                          isExpanded: true,
                          hint: Text(_location,style: TextStyle(fontWeight: FontWeight.bold),),
                          underline: SizedBox(),
                          items: places.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value, style: TextStyle(color: Colors.black),),
                            );
                          }).toList(),
                          onChanged: (_) {
                            print(places.indexOf(_));
                            num = places.indexOf(_);
                            _location = _;
                            selected = true;
                            setState(() {

                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 65.0, vertical: 75.0),
                    child: FlatButton(
                        color: const Color(0xff006BC9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(23.0)
                            )
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Confirmation()));
                        }, child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text('Proceed to Book',
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
        ],
      ),
    );
  }
}
