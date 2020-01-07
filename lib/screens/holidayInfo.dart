import 'package:TripUp/screens/holidayBook.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/tour.jpg',
  'assets/images/tour.jpg',
  'assets/images/tour.jpg',
  'assets/images/tour.jpg',
];

final List child = map<Widget>(
  imgList,
  (index, i) {
    return Container(
      //margin: EdgeInsets.all(5.0),
      child: Container(
        child: Image.asset(
          i,
          //fit: BoxFit.none,
          // width: 1000.0,
        ),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

class HolidayInfo extends StatefulWidget {
  @override
  _HolidayInfoState createState() => _HolidayInfoState();
}

class _HolidayInfoState extends State<HolidayInfo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _current = 0;

  Widget day1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16),
          child: Text("-Pick-up from Airport",
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.w600)),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 16),
              child: Text("-Drop at hotel ",
                  style: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text("Silver Leaf Manhattan",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w600)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 16),
          child: Text("-Breakfast at Hotel",
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 16),
          child: Text("-At evening sightseeing at beach",
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 16),
          child: Text("-Candle light dinner at beach resort",
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }

  Widget day2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16),
          child: Text("-At evening sightseeing",
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 16),
          child: Text("-Candle light dinner at beach resort",
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }

  Widget day3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16),
          child: Text("-At evening sightseeing",
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 16),
          child: Text("-Candle light dinner at beach resort",
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  Widget floatingBar(IconData tabIcon, String tabText) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0.0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Icon(
                  tabIcon,
                  color: Colors.blue,
                  size: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  tabText,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              CarouselWithIndicator(context),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 40, 8, 8),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white)),
              )
            ],
          ),
          Flexible(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text(
                              "Manhattan Beaches",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              padding: EdgeInsets.all(5.0),
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
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Rockway Beach, Fort Tulden, Brighton Beach",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 3, 20, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Facilities",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 20, 0),
                        child: Container(
                          width: deviceInfo.size.width,
                          //height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              floatingBar(Icons.local_dining, "Meals"),
                              floatingBar(Icons.flight_takeoff, "Air-fair"),
                              floatingBar(Icons.directions_car, "Transfer"),
                              floatingBar(Icons.business, "Hotel"),
                              floatingBar(Icons.camera_alt, "Sightseeing"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    color: Colors.blueGrey[100],
                    width: deviceInfo.size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("2 Travellers",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[700])),
                              Text(
                                "  ●  ",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blue),
                              ),
                              Text(
                                "\$250 - \$350",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[700]),
                              ),
                            ],
                          ),
                          Text(
                            "Change",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  height: 3,
                ),
                TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.blue,
                  tabs: [
                    Tab(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Text(
                        "Day 1",
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
                    Tab(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Text(
                        "Day 2",
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
                    Tab(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Text(
                        "Day 3",
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
                  ],
                  controller: _tabController,
                  indicatorColor: Colors.blue,
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
                Container(
                  width: deviceInfo.size.width,
                  height: 150,
                  child: TabBarView(
                    children: [
                      day1(),
                      day2(),
                      day3(),
                    ],
                    controller: _tabController,
                  ),
                ),
              ],
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
                            builder: (context) => HolidayBooking(
                                "Holiday Booked",
                                "Manhattan Beaches",
                                "Call us",
                                "\$120.00",
                                "Holiday Starts",
                                "Holiday Ends",
                                "23 Jun, 2019",
                                "24 Jun, 2019",
                                "Booked by",
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
                                "\$100.00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "For 2 Guests",
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
                            "BOOK NOW",
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
    );
  }
}

class CarouselWithIndicator extends StatefulWidget {
  CarouselWithIndicator(this.mediaContext);
  final BuildContext mediaContext;

  @override
  _CarouselWithIndicatorState createState() =>
      _CarouselWithIndicatorState(mediaContext);
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  _CarouselWithIndicatorState(this.mediaContext);
  int _current = 0;
  BuildContext mediaContext;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: child,
          autoPlay: true,
          viewportFraction: 1.0,
          aspectRatio: 16 / 9,
          onPageChanged: (index) {
            setState(() {
              _current = index;
            });
          },
        ),
        Positioned(
          //alignment: Alignment.topCenter, //45
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(
              imgList,
              (index, url) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.white : Colors.grey),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
