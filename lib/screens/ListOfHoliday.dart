import 'package:flutter/material.dart';
import 'package:TripUp/screens/holidayInfo.dart';

class ListOfHolidays extends StatefulWidget {
  @override
  _ListOfHolidaysState createState() => _ListOfHolidaysState();
}

class _ListOfHolidaysState extends State<ListOfHolidays> {
  List<HolidayList> listOfTrains = [
    HolidayList(
      "Manhattan Beaches",
      "For Person",
      "Rockaway Beach, Fort Tulden, Brighton Beach",
      250.00,
    ),
    HolidayList(
      "Manhattan Beaches",
      "For Person",
      "Rockaway Beach, Fort Tulden, Brighton Beach",
      250.00,
    ),
    HolidayList(
      "Manhattan Beaches",
      "For Person",
      "Rockaway Beach, Fort Tulden, Brighton Beach",
      250.00,
    ),
    HolidayList(
      "Manhattan Beaches",
      "For Person",
      "Rockaway Beach, Fort Tulden, Brighton Beach",
      250.00,
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
                        "Manhattan",
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
                        "November 2019",
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
                        "\$250 - \$350",
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
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListView.builder(
                    itemCount: listOfTrains.length,
                    itemBuilder: (BuildContext context, int index) {
                      return listOfTrains[index];
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HolidayList extends StatelessWidget {
  final String placeName;
  final String numPersons;
  final String holidayLocation;
  final double price;

  HolidayList(
    this.placeName,
    this.numPersons,
    this.holidayLocation,
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
            MaterialPageRoute(builder: (context) => HolidayInfo()),
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
                                    "$placeName",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 4.0, left: 12),
                                  child: Text(
                                    "$holidayLocation",
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
                                  "$numPersons",
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
                        floatingBar(Icons.local_dining, "Meals", true),
                        floatingBar(Icons.flight_takeoff, "Air-fair", true),
                        floatingBar(Icons.directions_car, "Transfer", true),
                        floatingBar(Icons.business, "Hotel", true),
                        floatingBar(Icons.camera_alt, "Sightseeing", true),
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
                        "3 D - 4 N",
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
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
