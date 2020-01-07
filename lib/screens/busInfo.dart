//Change icon of button and add image

import 'package:flutter/material.dart';
import 'package:TripUp/screens/busTicket.dart';

class BusInfo extends StatefulWidget {
  @override
  _BusInfoState createState() => _BusInfoState();
}

Widget floatingBar(IconData tabIcon, String tabText, bool active) {
  return Row(
    children: <Widget>[
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Icon(
              tabIcon,
              color: active ? Colors.black : Colors.grey,
              size: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 12.0),
            child: Text(
              tabText,
              style: TextStyle(
                  color: active ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 12),
            ),
          ),
        ],
      ),
    ],
  );
}

class _BusInfoState extends State<BusInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/tour.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 28, 8, 0),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(24, 8, 0, 0),
                          child: Text(
                            "23 Jul 2019",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 0),
                          child: Text(
                            " ● ",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            "1 Traveller",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(58, 32, 24, 6),
                      child: Text(
                        "23 Jul, 12:35 am | Pickup location",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.blue,
                            size: 18,
                          ),
                          Flexible(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text("Old City Market, Houstone, USA",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16))),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 59.0, top: 16, bottom: 16),
                          child: Container(
                            height: 1,
                            width: 130,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 24),
                          child: Text("12 hr 35 mins | 8 Stops",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(58, 8, 24, 6),
                      child: Text(
                        "24 Jul, 12:45 am | Drop location",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.blue,
                            size: 18,
                          ),
                          Flexible(
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, bottom: 40),
                                child: Text("White Church, Manhattan, USA",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //constraints: BoxConstraints(maxHeight: 282, maxWidth: 412),
                child: Flexible(
                  flex: 1,
                  child: BottomPartBusInfo1(
                      "Polo Travels", "2X1(36)AC -Sleeper TATA"),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 61,
                      color: Colors.blue,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BusTickets(
                                    "Ticket Booked",
                                    "Polo Travels",
                                    "2X1(36) AC-Sleeper TATA",
                                    "\$105.50",
                                    "Pick-up location",
                                    "Old City Market, Houstone, USA",
                                    "Drop location",
                                    "White church, Manhattan, USA",
                                    Icons.arrow_upward,
                                    '',
                                    "Departure",
                                    "Arrival",
                                    "23 Jun, 12:35 am",
                                    "24 Jun, 11:45 pm",
                                    "Class",
                                    "Total Seats",
                                    "Seat",
                                    "Upper Seat",
                                    "01",
                                    "B3",
                                    "Passenger name",
                                    "Age",
                                    "Gender",
                                    "Sam Smith",
                                    "25",
                                    "Male")),
                            //Add Verification page
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 32.0),
                                  child: Text(
                                    "\$90.50",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "1 traveller",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 32),
                              child: Text(
                                "BOOK B3 SEAT",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 284,
            left: 15,
            right: 15,
            child: Container(
              height: 35,
              //width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  floatingBar(Icons.wifi, "WiFi", true),
                  floatingBar(Icons.ac_unit, "AC", true),
                  floatingBar(Icons.power, "Power", false),
                  floatingBar(Icons.work, "6 kg bag", true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomPartBusInfo1 extends StatefulWidget {
  BottomPartBusInfo1(this.companyName, this.trainNumber);

  final String companyName;
  final String trainNumber;

  @override
  _BottomPartBusInfoState1 createState() =>
      _BottomPartBusInfoState1(companyName, trainNumber);
}

class _BottomPartBusInfoState1 extends State<BottomPartBusInfo1> {
  _BottomPartBusInfoState1(this.companyName, this.trainNumber);

  final String companyName;
  final String trainNumber;
  bool iniState = false;
  bool currentState = false;
  String id;

  Widget seatManager(/*List<int> bookedSeats*/) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SeatBox(
                    "B1", (MediaQuery.of(context).size.width) / 9, 16, false),
                SeatBox(
                    "B3", (MediaQuery.of(context).size.width) / 9, 16, false),
                SeatBox(
                    "B5", (MediaQuery.of(context).size.width) / 9, 16, false),
                SeatBox(
                    "B7", (MediaQuery.of(context).size.width) / 9, 16, false),
                SeatBox(
                    "B9", (MediaQuery.of(context).size.width) / 9, 16, false),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SeatBox(
                    "B2", (MediaQuery.of(context).size.width) / 9, 16, false),
                SeatBox(
                    "B4", (MediaQuery.of(context).size.width) / 9, 16, false),
                SeatBox(
                    "B6", (MediaQuery.of(context).size.width) / 9, 16, false),
                SeatBox(
                    "B8", (MediaQuery.of(context).size.width) / 9, 16, false),
                SeatBox(
                    "B10", (MediaQuery.of(context).size.width) / 9, 16, false),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SeatBox(
                      "A1", (MediaQuery.of(context).size.width) / 9, 16, false),
                  SeatBox(
                      "A2", (MediaQuery.of(context).size.width) / 9, 16, false),
                  SeatBox(
                      "A3", (MediaQuery.of(context).size.width) / 9, 16, false),
                  SeatBox(
                      "A4", (MediaQuery.of(context).size.width) / 9, 16, false),
                  SeatBox(
                      "A5", (MediaQuery.of(context).size.width) / 9, 16, false),
                ],
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RotatedBox(
                quarterTurns: 1,
                child: SeatBox("B11", 36,
                    (MediaQuery.of(context).size.width) / 20, false)),
            RotatedBox(
                quarterTurns: 1,
                child: SeatBox(
                    "A6", 26, (MediaQuery.of(context).size.width) / 20, false)),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 40, left: 24, right: 28, bottom: 20),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0, 12.0, 0),
                    child: Container(
                      height: 34,
                      width: 34,
                      color: Colors.grey[800],
                    ), /*Image(
                            height: 24,
                            width: 24,
                            image: AssetImage('$image'),
                            fit: BoxFit.contain,
                          ),*/
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 4),
                        child: Text(
                          companyName,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Text(
                        trainNumber,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Available",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.red[200],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Booked",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.75),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[100],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RotatedBox(
                  quarterTurns: -1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                    child: Text(
                      "Upper Seats",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: seatManager(),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.75),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RotatedBox(
                  quarterTurns: -1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                    child: Text(
                      "Lower Seats",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: seatManager(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SeatBox extends StatefulWidget {
  SeatBox(this.id, this.width, this.height, this.currentState);
  final String id;
  final double width;
  final double height;
  bool currentState;

  @override
  _SeatBoxState createState() => _SeatBoxState(id, width, height, currentState);
}

class _SeatBoxState extends State<SeatBox> {
  _SeatBoxState(this.id, this.width, this.height, this.currentState);
  final String id;
  final double width;
  final double height;
  bool currentState;
  bool iniState;

  final List<String> bookedSeats = [
    "B1",
    "B7",
    "B10",
    "A3",
    "A4",
    "B13",
    "B15",
    "B16",
    "B17",
    "B19",
    "B21",
    "B22",
    "A7",
    "A10",
    "A12"
  ];
  @override
  Widget build(BuildContext context) {
    if (bookedSeats.contains(id)) {
      iniState = false;
    } else {
      iniState = true;
    }
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {
          if (bookedSeats.contains(id) == false) {
            setState(() {
              if (currentState) {
                currentState = false;
              } else {
                currentState = true;
              }
            });
          }
        },
        child: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: iniState ? Colors.grey[400] : Colors.red[200],
              ),
            ),
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: currentState ? Colors.blue : Colors.transparent,
              ),
              child: Center(
                child: currentState
                    ? Text(
                        id,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    : Text(""),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
