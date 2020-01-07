import 'package:TripUp/screens/account.dart';
import 'package:flutter/material.dart';
import 'package:TripUp/screens/flight.dart';
import 'dart:ui';
import 'package:TripUp/main.dart';
import 'package:TripUp/screens/train.dart';
import 'package:TripUp/screens/hotel.dart';
import 'package:TripUp/screens/cab.dart';
import 'package:TripUp/screens/holidays.dart';
import 'package:TripUp/screens/homeStays.dart';
import 'package:TripUp/screens/bus.dart';
import 'package:TripUp/screens/bookings.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [Home(), Booking(), Account()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: HexColor("#f1f6f7"),
      body: _children[_currentIndex],
      bottomNavigationBar: TitledBottomNavigationBar(
        indicatorColor: Colors.blue,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          TitledNavigationBarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          TitledNavigationBarItem(
            icon: Icons.check_box,
            title: 'Bookings',
          ),
          TitledNavigationBarItem(
            icon: Icons.account_box,
            title: 'Account',
          )
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return myList();
  }

  Widget myList() {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
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
                  padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
                  child: Text(
                    "Hey Sam,\nWhere you wanna go?",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: HexColor("#34efff"),
                        size: 18,
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white54,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor("#34efff"),
                              ),
                            ),
                            contentPadding:
                                EdgeInsets.only(bottom: 8, left: 8, top: 2),
                            hintText: "Manhattan, New York",
                            hintStyle: TextStyle(
                                color: HexColor("#34efff"), fontSize: 16),
                          ),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: HexColor("#34efff"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 24, 32, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 65,
                        height: 65,
                        child: FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FlightPage()),
                                //Add Verification page
                              );
                            },
                            child: FlightCalculationCard(
                                "FLIGHT", "assets/images/plane.png")),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HotelPage()),
                              //Add Verification page
                            );
                          },
                          child: FlightCalculationCard(
                              "HOTELS", "assets/images/hotemwhite.png"),
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrainPage()),
                              //Add Verification page
                            );
                          },
                          child: FlightCalculationCard(
                              "TRAINS", "assets/images/train.png"),
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HolidaysPage()),
                              //Add Verification page
                            );
                          },
                          child: FlightCalculationCard(
                              "HOLIDAYS", "assets/images/beach.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 10, 32, 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 65,
                        height: 65,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BusPage()),
                              //Add Verification page
                            );
                          },
                          child: FlightCalculationCard(
                              "BUS", "assets/images/bus.png"),
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CabPage()),
                              //Add Verification page
                            );
                          },
                          child: FlightCalculationCard(
                              "CABS", "assets/images/cab.png"),
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeStaysPage()),
                              //Add Verification page
                            );
                          },
                          child: FlightCalculationCard(
                              "HOMESTAYS", "assets/images/house.png"),
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: FlightCalculationCard(
                              "MORE", "assets/images/more.png"),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          HotelCardCarousel("Flights"),
          HotelCardCarousel("Trains"),
          HotelCardCarousel("Buses"),
          HotelCardCarousel("Cabs"),
          HotelCardCarousel("Hotels"),
          HotelCardCarousel("Holidays"),
          HotelCardCarousel("Homestays"),
        ],
      ),
    );
  }
}

class FlightCalculationCard extends StatelessWidget {
  FlightCalculationCard(this.heading, this.image);
  final String heading;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          //color: Colors.grey.shade200.withOpacity(0.2),
          image: DecorationImage(
              image: AssetImage("assets/images/iconBackground.png"))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              height: 26,
              width: 26,
              image: AssetImage('$image'),
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "$heading",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HotelCardCarousel extends StatelessWidget {
  HotelCardCarousel(this.heading);

  final String heading;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      color: HexColor("#f1f6f7"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text(
              "Exclusive $heading",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 0),
            child: Text(
              "Experience actual meaning of awesomeness",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ),
          Container(
            height: 200,
            //width: 400,
            child: ListView(
              padding: EdgeInsets.only(left: 20, top: 16),
              scrollDirection: Axis.horizontal,
              children: (heading == "Hotels")
                  ? <Widget>[
                      Cards(
                        "hotelInfo",
                        "Hotel Hexel Paradise",
                        "Manhattan Beaches",
                        "\$ 1449",
                      ),
                      Cards(
                        "hotelInfo",
                        "Hotel Hexel Paradise",
                        "Manhattan Beaches",
                        "\$ 1449",
                      ),
                      Cards(
                        "hotelInfo",
                        "Hotel Hexel Paradise",
                        "Manhattan Beaches",
                        "\$ 1449",
                      ),
                      Cards(
                        "hotelInfo",
                        "Hotel Hexel Paradise",
                        "Manhattan Beaches",
                        "\$ 1449",
                      ),
                    ]
                  : (heading == "Flights")
                      ? <Widget>[
                          Cards(
                            "flightInfo",
                            "American Airlines",
                            "Manhattan, USA",
                            "\$ 1449",
                          ),
                          Cards(
                            "flightInfo",
                            "American Airlines",
                            "Manhattan, USA",
                            "\$ 1449",
                          ),
                          Cards(
                            "flightInfo",
                            "American Airlines",
                            "Manhattan, USA",
                            "\$ 1449",
                          ),
                          Cards(
                            "flightInfo",
                            "American Airlines",
                            "Manhattan, USA",
                            "\$ 158.50",
                          ),
                        ]
                      : (heading == "Buses")
                          ? <Widget>[
                              Cards(
                                "busInfo",
                                "Polo Travels",
                                "Manhattan",
                                "\$ 90.50",
                              ),
                              Cards(
                                "busInfo",
                                "Polo Travels",
                                "Manhattan",
                                "\$ 90.50",
                              ),
                              Cards(
                                "busInfo",
                                "Polo Travels",
                                "Manhattan",
                                "\$ 90.50",
                              ),
                              Cards(
                                "busInfo",
                                "Polo Travels",
                                "Manhattan",
                                "\$ 90.50",
                              ),
                            ]
                          : (heading == "Trains")
                              ? <Widget>[
                                  Cards(
                                      "trainInfo",
                                      "American Superfast Express",
                                      "Manhattan",
                                      "\$ 35.50"),
                                  Cards(
                                      "trainInfo",
                                      "American Superfast Express",
                                      "Manhattan",
                                      "\$ 35.50"),
                                  Cards(
                                      "trainInfo",
                                      "American Superfast Express",
                                      "Manhattan",
                                      "\$ 35.50"),
                                  Cards(
                                      "trainInfo",
                                      "American Superfast Express",
                                      "Manhattan",
                                      "\$ 35.50"),
                                ]
                              : (heading == "Cabs")
                                  ? <Widget>[
                                      Cards(
                                        "cabInfo",
                                        "Opera Taxi Service",
                                        "Hatchback Car",
                                        "\$ 120.50",
                                      ),
                                      Cards(
                                        "cabInfo",
                                        "Opera Taxi Service",
                                        "Hatchback Car",
                                        "\$ 120.50",
                                      ),
                                      Cards(
                                        "cabInfo",
                                        "Opera Taxi Service",
                                        "Hatchback Car",
                                        "\$ 120.50",
                                      ),
                                      Cards(
                                        "cabInfo",
                                        "Opera Taxi Service",
                                        "Hatchback Car",
                                        "\$ 120.50",
                                      ),
                                    ]
                                  : (heading == "Holidays")
                                      ? <Widget>[
                                          Cards(
                                              "holidayInfo",
                                              "Manhattan Beaches",
                                              "Rockaway Beache",
                                              "\$ 250.50"),
                                          Cards(
                                              "holidayInfo",
                                              "Manhattan Beaches",
                                              "Rockaway Beache",
                                              "\$ 250.50"),
                                          Cards(
                                              "holidayInfo",
                                              "Manhattan Beaches",
                                              "Rockaway Beache",
                                              "\$ 250.50"),
                                          Cards(
                                              "holidayInfo",
                                              "Manhattan Beaches",
                                              "Rockaway Beache",
                                              "\$ 250.50"),
                                        ]
                                      : <Widget>[
                                          Cards(
                                              "homestayInfo",
                                              "White Heaven Villa",
                                              "City Circle, Manhattan",
                                              "\$ 120.50"),
                                          Cards(
                                              "homestayInfo",
                                              "White Heaven Villa",
                                              "City Circle, Manhattan",
                                              "\$ 120.50"),
                                          Cards(
                                              "homestayInfo",
                                              "White Heaven Villa",
                                              "City Circle, Manhattan",
                                              "\$ 120.50"),
                                          Cards(
                                              "homestayInfo",
                                              "White Heaven Villa",
                                              "City Circle, Manhattan",
                                              "\$ 120.50"),
                                        ],
            ),
          ),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  Cards(this.navTo, this.place, this.area, this.price);

  final String navTo;
  final String place;
  final String area;
  final String price;

  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(left: 0, top: 0, right: 20),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey[350],
                  offset: Offset(0, 0),
                  blurRadius: 7.0,
                ),
              ],
            ),
            height: deviceInfo.size.width * 0.48, //170,
            width: deviceInfo.size.width * 0.70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/tour2.png'),
                  fit: BoxFit.cover,
                  height: deviceInfo.size.width * 0.33, //120,
                  width: deviceInfo.size.width * 0.70,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        place,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            area,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Text(
                            price,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: HexColor("#34efff")),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //  color: Colors.white,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.transparent,
            ),
            height: deviceInfo.size.width * 0.48, //170,
            width: deviceInfo.size.width * 0.70,
            child: Material(
              type: MaterialType.transparency,
              elevation: 6.0,
              color: Colors.transparent,
              //shadowColor: Colors.grey[50],
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/$navTo');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
