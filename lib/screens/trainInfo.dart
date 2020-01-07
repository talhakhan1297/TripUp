import 'package:TripUp/screens/trainBook.dart';
import 'package:flutter/material.dart';

class TrainInfo extends StatefulWidget {
  @override
  _TrainInfoState createState() => _TrainInfoState();
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

class _TrainInfoState extends State<TrainInfo> {
  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: deviceInfo.size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/tour.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 24, 8, 0),
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
                          padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                          child: Text(
                            "23 Jul 2019",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Text(
                            " ● ",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(58, 8, 24, 6),
                          child: Text(
                            "23 Jul, 12:35 am",
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
                                Icons.arrow_upward,
                                color: Colors.blue,
                                size: 18,
                              ),
                              Flexible(
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text("Houstone, USA",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Container(
                            height: 1,
                            width: deviceInfo.size.width * 0.30,
                            color: Colors.grey,
                          ),
                        ),
                        Text("12 hr 35 mins | 8 Stops",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey[200],
                            ),
                            height: 30,
                            width: 30,
                            //color: Colors.white,
                            child: IconButton(
                              padding: EdgeInsets.all(0),
                              icon: Icon(Icons.swap_vert),
                              iconSize: 18,
                              color: Colors.blue,
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(58, 8, 24, 6),
                          child: Text(
                            "24 Jul, 12:45 am",
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
                                        left: 16.0, bottom: 45),
                                    child: Text("Manhattan, USA",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                //constraints: BoxConstraints(maxHeight: 282, maxWidth: 412),
                child: Flexible(
                  flex: 1,
                  child: BottomPartTrainInfo(
                      "American Superfast Express", "B145523"),
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
                                builder: (context) => TrainBooking(
                                    "Ticket Booked",
                                    "American Express",
                                    "B145523",
                                    "\$90.50",
                                    "Houstone, USA",
                                    "HOU",
                                    "Manhattan, USA",
                                    "MHK",
                                    Icons.arrow_upward,
                                    '',
                                    "Departure",
                                    "Arrival",
                                    "23 Jun, 12:35 am",
                                    "24 Jun, 10:00 am",
                                    "Class",
                                    "",
                                    "Seat",
                                    "First Class",
                                    "",
                                    "A29",
                                    "Passenger name",
                                    "Age",
                                    "Gender",
                                    "Sam Smith",
                                    "25",
                                    "Male")),
                            //Add Verification page
                          );
                        },
                        child: Center(
                          child: Text(
                            "BOOK NOW",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: deviceInfo.size.height * 0.465,
            left: 15,
            right: 15,
            child: Container(
              height: deviceInfo.size.height * 0.07,
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

class Info extends StatelessWidget {
  final String seatPrice;
  final String seatClass;
  final String seatsLeft;
  final bool state;

  Info(this.seatPrice, this.seatClass, this.seatsLeft, this.state);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        color: state ? Colors.blue : Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      seatClass,
                      style: TextStyle(
                        color: state ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  Text(
                    seatsLeft,
                    style: TextStyle(
                      color: state ? Colors.black : Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  seatPrice,
                  style: TextStyle(
                    color: state ? Colors.white : Colors.blue,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
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

class BottomPartTrainInfo extends StatefulWidget {
  BottomPartTrainInfo(this.companyName, this.trainNumber);
  final String companyName;
  final String trainNumber;

  @override
  _BottomPartTrainInfoState createState() =>
      _BottomPartTrainInfoState(companyName, trainNumber);
}

class _BottomPartTrainInfoState extends State<BottomPartTrainInfo> {
  _BottomPartTrainInfoState(this.companyName, this.trainNumber);
  final String companyName;
  final String trainNumber;
  bool state1 = true;
  bool state2 = false;
  bool state3 = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 50, left: 24, right: 24, bottom: 20),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0, 12.0, 12),
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
        ),
        GestureDetector(
            onTap: () {
              setState(() {
                if (state1 == false) {
                  state1 = true;
                  state2 = false;
                  state3 = false;
                }
              });
            },
            child:
                Info("\$35.50", "First Class Seats", "50 seats left", state1)),
        GestureDetector(
            onTap: () {
              setState(() {
                if (state2 == false) {
                  state2 = true;
                  state1 = false;
                  state3 = false;
                }
              });
            },
            child:
                Info("\$23.00", "Second Class Seats", "78 seats left", state2)),
        GestureDetector(
            onTap: () {
              setState(() {
                if (state3 == false) {
                  state3 = true;
                  state2 = false;
                  state1 = false;
                }
              });
            },
            child:
                Info("\$300.00", "Chair Class Seats", "25 seats left", state3)),
      ],
    );
  }
}
