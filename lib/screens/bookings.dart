import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<BookingsList> bookings = [
    BookingsList("Flight Booked", 165, "American Airlines", "Houstone, USA",
        "to Manhattan, USA", "23 Jul, 12.35 am", "", "assets/images/plane.png"),
    BookingsList("Flight Booked", 165, "American Airlines", "Houstone, USA",
        "to Manhattan, USA", "23 Jul, 12.35 am", "", "assets/images/plane.png"),
    BookingsList("Flight Booked", 165, "American Airlines", "Houstone, USA",
        "to Manhattan, USA", "23 Jul, 12.35 am", "", "assets/images/plane.png"),
    BookingsList("Flight Booked", 165, "American Airlines", "Houstone, USA",
        "to Manhattan, USA", "23 Jul, 12.35 am", "", "assets/images/plane.png"),
    BookingsList("Flight Booked", 165, "American Airlines", "Houstone, USA",
        "to Manhattan, USA", "23 Jul, 12.35 am", "", "assets/images/plane.png"),
    BookingsList("Flight Booked", 165, "American Airlines", "Houstone, USA",
        "to Manhattan, USA", "23 Jul, 12.35 am", "", "assets/images/plane.png"),
    BookingsList("Flight Booked", 165, "American Airlines", "Houstone, USA",
        "to Manhattan, USA", "23 Jul, 12.35 am", "", "assets/images/plane.png"),
    BookingsList("Flight Booked", 165, "American Airlines", "Houstone, USA",
        "to Manhattan, USA", "23 Jul, 12.35 am", "", "assets/images/plane.png"),
    BookingsList("Flight Booked", 165, "American Airlines", "Houstone, USA",
        "to Manhattan, USA", "23 Jul, 12.35 am", "", "assets/images/plane.png"),
    BookingsList("Flight Booked", 165, "American Airlines", "Houstone, USA",
        "to Manhattan, USA", "23 Jul, 12.35 am", "", "assets/images/plane.png"),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "My bookings",
          style: TextStyle(color: Colors.black),
        ),
        bottom: TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.black,
          labelColor: Colors.blue,
          tabs: [
            Tab(text: "All bookings"),
            Tab(text: "Flight"),
            Tab(text: "Train"),
            Tab(text: "Hotel"),
            Tab(text: "Cab"),
            Tab(text: "Holiday"),
            Tab(text: "Homestays"),
          ],
          controller: _tabController,
          indicatorColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
      ),
      body: TabBarView(
        children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return bookings[index];
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return bookings[index];
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return bookings[index];
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return bookings[index];
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return bookings[index];
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return bookings[index];
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return bookings[index];
            },
          ),
        ],
        controller: _tabController,
      ),
    );
  }
}

class BookingsList extends StatelessWidget {
  final String bookedWhat;
  final double price;
  final String bookedFrom;
  final String whereFrom;
  final String whereTo;
  final String whenFrom;
  final String whenTo;
  final String image;

  BookingsList(
    this.bookedWhat,
    this.price,
    this.bookedFrom,
    this.whereFrom,
    this.whereTo,
    this.whenFrom,
    this.whenTo,
    this.image,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Column(
          // wrap with container
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    bookedWhat,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\$$price",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image(
                    height: 24,
                    width: 24,
                    image: AssetImage('$image'),
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "$bookedFrom",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("$whereFrom $whereTo",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                      child: Text("$whenFrom $whenTo",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
