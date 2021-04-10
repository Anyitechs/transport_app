import 'package:flutter/material.dart';
import 'package:transport_app/confirmation.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  String _location = 'Goods Type';
  String _payment = 'Select Payment Method';
  bool selected = false;
  List<String> places = ['Laptops', 'Phones', 'Shoes'];
  List<String> payment = ['Paystack', 'Flutterwave', 'Stripe'];
  int num = 0;
  int weight = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff006BC9),
        title: Text(
          'Booking Information',
          style: TextStyle(
              fontSize: 22.0, letterSpacing: 0.8, fontFamily: 'DMSans'),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 40.0),
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
                            Icons.calendar_today,
                            color: Colors.grey,
                            size: 35.0,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Wed 26 march 2020, 5:30pm',
                        style: TextStyle(fontFamily: 'DMSans', fontSize: 19.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 18.0),
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // color: Colors.red,
                    color: const Color(0xffF9F9F9),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Icon(
                                Icons.set_meal_outlined,
                                color: Colors.grey,
                                size: 35.0,
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              'Weight(Tones)',
                              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold, fontFamily: 'DMSans'),
                            ),
                          ],
                        ),
                      ),
                       Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff95F4FA),
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0, vertical: 2.0),
                                  child: Icon(
                                    Icons.add,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(weight.toString() + '.0'),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff95F4FA),
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0, vertical: 2.0),
                                  child: Icon(
                                    Icons.remove,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 13.0,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 18.0),
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
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: new DropdownButton<String>(
                            icon: RotatedBox(
                              quarterTurns: -45,
                              child: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: const Color(0xff000000),
                              ),
                            ),
                            autofocus: true,
                            isExpanded: true,
                            hint: Row(
                              children: [
                                Icon(
                                    Icons.outbox,
                                    color: Colors.grey,
                                    size: 35.0,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  _location,
                                  style: TextStyle(
                                      fontFamily: 'DMSans',
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff000000)
                                  ),
                                ),
                              ],
                            ),
                            underline: SizedBox(),
                            items: places.map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (_) {
                              print(places.indexOf(_));
                              num = places.indexOf(_);
                              _location = _;
                              selected = true;
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 18.0),
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
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: new DropdownButton<String>(
                            icon: RotatedBox(
                              quarterTurns: -45,
                              child: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: const Color(0xff000000),
                              ),
                            ),
                            autofocus: true,
                            isExpanded: true,
                            hint: Row(
                              children: [
                                Icon(
                                    Icons.payment,
                                    color: Colors.grey,
                                    size: 35.0,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  _payment,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'DMSans',
                                      fontSize: 19.0, color: const Color(0xff000000)),
                                ),
                              ],
                            ),
                            underline: SizedBox(),
                            items: payment.map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (_) {
                              print(payment.indexOf(_));
                              num = payment.indexOf(_);
                              _payment = _;
                              selected = true;
                              setState(() {});
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 65.0, vertical: 75.0),
                      child: FlatButton(
                          color: const Color(0xff006BC9),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(23.0))),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Confirmation()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              'Proceed to Book',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
