import 'package:TripUp/screens/flightFilter.dart';
import 'package:TripUp/screens/flightInfo.dart';
import 'package:flutter/material.dart';

class ListOfFlights extends StatefulWidget {
  @override
  _ListOfFlightsState createState() => _ListOfFlightsState();
}

class _ListOfFlightsState extends State<ListOfFlights>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<FlightList> listOfFlights = [
    FlightList(
        "American Airlines",
        "AA-1264",
        158.50,
        "Houston",
        "Manhattan",
        "12:35 am",
        "12:35 am",
        "assets/images/plane.png",
        "1 Stop",
        "2 hr 32 mins"),
    FlightList(
        "American Airlines",
        "AA-1264",
        158.50,
        "Houston",
        "Manhattan",
        "12:35 am",
        "12:35 am",
        "assets/images/plane.png",
        "1 Stop",
        "2 hr 32 mins"),
    FlightList(
        "American Airlines",
        "AA-1264",
        158.50,
        "Houston",
        "Manhattan",
        "12:35 am",
        "12:35 am",
        "assets/images/plane.png",
        "1 Stop",
        "2 hr 32 mins"),
    FlightList(
        "American Airlines",
        "AA-1264",
        158.50,
        "Houston",
        "Manhattan",
        "12:35 am",
        "12:35 am",
        "assets/images/plane.png",
        "1 Stop",
        "2 hr 32 mins"),
    FlightList(
        "American Airlines",
        "AA-1264",
        158.50,
        "Houston",
        "Manhattan",
        "12:35 am",
        "12:35 am",
        "assets/images/plane.png",
        "1 Stop",
        "2 hr 32 mins"),
    FlightList(
        "American Airlines",
        "AA-1264",
        158.50,
        "Houston",
        "Manhattan",
        "12:35 am",
        "12:35 am",
        "assets/images/plane.png",
        "1 Stop",
        "2 hr 32 mins"),
  ];

  @override
  void initState() {
    _tabController = new TabController(length: 9, vsync: this);
    super.initState();
  }

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
                        "Houstone To Manhattan",
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
                        "Departure 23 Jul",
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
                        "1 Traveller",
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
                        "Economy",
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
          Container(
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              tabs: [
                Tab(
                    icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("23 Jul",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300)),
                      Text("\$ 185.50",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700))
                    ])),
                Tab(
                    icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("23 Jul",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300)),
                      Text("\$ 185.50",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700))
                    ])),
                Tab(
                    icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("23 Jul",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300)),
                      Text("\$ 185.50",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700))
                    ])),
                Tab(
                    icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("23 Jul",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300)),
                      Text("\$ 185.50",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700))
                    ])),
                Tab(
                    icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("23 Jul",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300)),
                      Text("\$ 185.50",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700))
                    ])),
                Tab(
                    icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("23 Jul",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300)),
                      Text("\$ 185.50",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700))
                    ])),
                Tab(
                    icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("23 Jul",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300)),
                      Text("\$ 185.50",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700))
                    ])),
                Tab(
                    icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("23 Jul",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300)),
                      Text("\$ 185.50",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700))
                    ])),
                Tab(
                    icon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("23 Jul",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300)),
                      Text("\$ 185.50",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700))
                    ])),
              ],
              controller: _tabController,
              indicatorColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          Flexible(
            child: Container(
              //height: 500,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: listOfFlights.length,
                      itemBuilder: (BuildContext context, int index) {
                        return listOfFlights[index];
                      },
                    ),
                  ),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: listOfFlights.length,
                      itemBuilder: (BuildContext context, int index) {
                        return listOfFlights[index];
                      },
                    ),
                  ),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: listOfFlights.length,
                      itemBuilder: (BuildContext context, int index) {
                        return listOfFlights[index];
                      },
                    ),
                  ),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: listOfFlights.length,
                      itemBuilder: (BuildContext context, int index) {
                        return listOfFlights[index];
                      },
                    ),
                  ),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: listOfFlights.length,
                      itemBuilder: (BuildContext context, int index) {
                        return listOfFlights[index];
                      },
                    ),
                  ),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: listOfFlights.length,
                      itemBuilder: (BuildContext context, int index) {
                        return listOfFlights[index];
                      },
                    ),
                  ),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: listOfFlights.length,
                      itemBuilder: (BuildContext context, int index) {
                        return listOfFlights[index];
                      },
                    ),
                  ),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: listOfFlights.length,
                      itemBuilder: (BuildContext context, int index) {
                        return listOfFlights[index];
                      },
                    ),
                  ),
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: listOfFlights.length,
                      itemBuilder: (BuildContext context, int index) {
                        return listOfFlights[index];
                      },
                    ),
                  ),
                ],
              ),
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
                        MaterialPageRoute(builder: (context) => FlightFilter()),
                        //Add Verification page
                      );
                    },
                    child: Center(
                      child: Text(
                        "SORT & FILTERS",
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
    );
  }
}

class FlightList extends StatelessWidget {
  final String companyName;
  final String planeType;
  final double price;
  final String whereFrom;
  final String whereTo;
  final String whenFrom;
  final String whenTo;
  final String image;
  final String stops;
  final String time;

  FlightList(
    this.companyName,
    this.planeType,
    this.price,
    this.whereFrom,
    this.whereTo,
    this.whenFrom,
    this.whenTo,
    this.image,
    this.stops,
    this.time,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 2, 8, 2),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FlightInfo()),
            //Add Verification page
          );
        },
        child: Card(
          elevation: 5,
          child: Column(
            // wrap with container
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment(0.3, 0.0),
                    colors: [Colors.blue, Colors.grey[50]], // whitish to gray
                  ),
                ),
                padding: EdgeInsets.all(9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          companyName,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 11),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            planeType,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "\$$price",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 12, 8.0, 12),
                      child: Container(
                        height: 34,
                        width: 34,
                        color: Colors.grey[800],
                      ) /*Image(
                      height: 24,
                      width: 24,
                      image: AssetImage('$image'),
                      fit: BoxFit.contain,
                    ),*/
                      ),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "$whenFrom",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 11),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Text(
                                  "$whereFrom",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 4.0, bottom: 4, right: 0),
                              child: Text(
                                stops,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Image(
                                image: AssetImage('assets/images/slider.png'),
                                width: 100,
                                height: 5,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 4.0, bottom: 4, right: 0),
                              child: Text(
                                time,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 16),
                              child: Text(
                                "$whenTo",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 4.0, bottom: 4.0, right: 16),
                              child: Text(
                                "$whereTo",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
