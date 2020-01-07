import 'package:TripUp/screens/hotelMapView.dart';
import 'package:flutter/material.dart';
import 'package:TripUp/screens/homestaysInfo.dart';

class ListOfHomestays extends StatefulWidget {
  @override
  _ListOfHomestaysState createState() => _ListOfHomestaysState();
}

class _ListOfHomestaysState extends State<ListOfHomestays> {
  List<HomestayList> listOfTrains = [
    HomestayList(
      "White Heaven Villa",
      "For 1 Guest",
      "City Circle, Manhattan",
      120.00,
    ),
    HomestayList(
      "White Heaven Villa",
      "For 1 Guest",
      "City Circle, Manhattan",
      120.00,
    ),
    HomestayList(
      "White Heaven Villa",
      "For 1 Guest",
      "City Circle, Manhattan",
      120.00,
    ),
    HomestayList(
      "White Heaven Villa",
      "For 1 Guest",
      "City Circle, Manhattan",
      120.00,
    ),
    HomestayList(
      "White Heaven Villa",
      "For 1 Guest",
      "City Circle, Manhattan",
      120.00,
    ),
    HomestayList(
      "White Heaven Villa",
      "For 1 Guest",
      "City Circle, Manhattan",
      120.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                Row(
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 28, 8, 0),
                      child: Text(
                        "Manhattan, USA",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 16),
                      child: Text(
                        "Check-in 23 Jul",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
                      child: Text(
                        "●",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: Text(
                        "Check-out 27 Jul",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
                      child: Text(
                        "●",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: Text(
                        "1 Guest",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              //height: 500,
              child: ListView.builder(
                itemCount: listOfTrains.length,
                itemBuilder: (BuildContext context, int index) {
                  return listOfTrains[index];
                },
              ),
            ),
          ),
          /*Container(
            child: TrainList(
              "American Superfast Express",
              "B15523",
              55,
              "Houston",
              "Manhattan",
              "23 Jun, 12:35 am",
              "23 Jun, 12:35 am",
              "assets/images/plane.png",
              "1 Stop",
              "12 hr 32 mins",
            ),
          ),*/
          Row(
            mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                //flex: 1,
                child: Container(
                  height: 61,
                  //width: 180,
                  color: Colors.blue,
                  child: FlatButton(
                    onPressed: () {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );*/
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.format_list_numbered,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        Text(
                          "FILTERS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 61,
                width: 0.5,
                color: Colors.black,
              ),
              Expanded(
                //flex: 1,
                child: Container(
                  height: 61,
                  //width: 180,
                  color: Colors.blue,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HotelMapView()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.map,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        Text(
                          "MAP VIEW",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
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
    );
  }
}

class HomestayList extends StatelessWidget {
  final String homestayName;
  final String numGuests;
  final String homestayLocation;
  final double price;

  HomestayList(
    this.homestayName,
    this.numGuests,
    this.homestayLocation,
    this.price,
  );

  Widget floatingBar(IconData tabIcon, String tabText, bool active) {
    return Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Icon(
                tabIcon,
                color: active ? Colors.black : Colors.grey,
                size: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                tabText,
                style: TextStyle(
                    color: active ? Colors.black : Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 10),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 4),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomestaysInfo()),
            //Add Verification page
          );
        },
        child: Stack(
          children: <Widget>[
            Card(
              elevation: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: deviceInfo.size.width,
                    height: 125,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(4.0, 4, 0, 0),
                          child: Image(
                            image: AssetImage("assets/images/tour.jpg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(4.0, 4, 0, 0),
                          child: Image(
                            image: AssetImage("assets/images/tour.jpg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(4.0, 4, 0, 0),
                          child: Image(
                            image: AssetImage("assets/images/tour.jpg"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(4.0, 4, 0, 0),
                          child: Image(
                            image: AssetImage("assets/images/tour.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment(0.3, 0.0),
                        colors: [
                          Colors.blue,
                          Colors.grey[50]
                        ], // whitish to gray
                      ),
                    ),
                    padding: EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    "$homestayName",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 4.0, left: 12),
                                  child: Text(
                                    "$homestayLocation",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 8, 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "\$$price",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  "$numGuests",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        floatingBar(Icons.wifi, "WiFi", true),
                        floatingBar(Icons.ac_unit, "AC", true),
                        floatingBar(Icons.tv, "TV", true),
                        floatingBar(Icons.pool, "Pool", true),
                        floatingBar(Icons.kitchen, "Kitchen", true),
                        floatingBar(Icons.hot_tub, "Geyser", true),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 99,
              left: 15,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.green),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "4.7",
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Icon(
                          Icons.star,
                          size: 11,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}