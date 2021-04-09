import 'package:flutter/material.dart';
import 'package:transport_app/my_flutter_app_icons.dart';

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
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff95F4FA),
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Icon(
                    MyFlutterApp.truck,
                    size: 40.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'TATA-458',
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                '7ft X 4.5ft X 5.5ft (L XB XH)',
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8,
                  color: const Color(0xffB6BABB)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: TextFormField(
                initialValue: '4249 Kyle Street, Coleville',
                style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(
                  // icon: Icon(Icons.ac_unit),
                  labelText: 'Pickup Location',
                  labelStyle: TextStyle(
                    color: const Color(0xffB6BABB),
                    fontFamily: 'DMSans',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1
                  )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: TextFormField(
                initialValue: '1568 agty Street, Toronto canada',
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(
                  // icon: Icon(Icons.ac_unit),
                    labelText: 'Pickup Location',
                    labelStyle: TextStyle(
                        color: const Color(0xffB6BABB),
                        fontFamily: 'DMSans',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                    )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 13.0, top: 25.0),
              child: Row(
                children: [
                  Icon(
                    Icons.stacked_bar_chart,
                    color: const Color(0xffB6BABB),
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Industrial Goods',
                    style: TextStyle(
                      color: const Color(0xffB6BABB),
                      fontFamily: 'DMSans',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 80.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xffF9F9F9)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Icon(
                            Icons.calendar_today
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '29/03/2020'
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xffF9F9F9)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Icon(
                              Icons.keyboard
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                            '1.0 Tons'
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xffF9F9F9)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Icon(
                              Icons.blur_circular
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                            '50 Miles'
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Estimate Price',
                      style: TextStyle(
                          color: const Color(0xffB6BABB),
                          fontFamily: 'DMSans',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      'Applied Promo code',
                      style: TextStyle(
                          color: const Color(0xffB6BABB),
                          fontFamily: 'DMSans',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
