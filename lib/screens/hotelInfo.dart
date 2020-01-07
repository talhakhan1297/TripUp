import 'package:TripUp/screens/HotelBook.dart';
import 'package:TripUp/screens/hotelReviews.dart';
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

class HotelInfo extends StatefulWidget {
  @override
  _HotelInfoState createState() => _HotelInfoState();
}

class _HotelInfoState extends State<HotelInfo> {
  int _current = 0;

  Widget floatingBar(IconData tabIcon, String tabText) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 24.0),
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
                              "Hotel Sky Garden",
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
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "City Park, Manhattan",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "1.5k people rated",
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
                          "Amenities",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 20, 1),
                        child: Container(
                          width: deviceInfo.size.width,
                          height: 50,
                          child: ListView(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              floatingBar(Icons.wifi, "WiFi"),
                              floatingBar(Icons.ac_unit, "AC"),
                              floatingBar(Icons.tv, "TV"),
                              floatingBar(Icons.free_breakfast, "Breakfast"),
                              floatingBar(
                                  Icons.local_laundry_service, "Laundary"),
                              floatingBar(Icons.whatshot, "Geyser"),
                              floatingBar(Icons.wifi, "WiFi"),
                              floatingBar(Icons.ac_unit, "AC"),
                              floatingBar(Icons.tv, "TV"),
                              floatingBar(Icons.free_breakfast, "Breakfast"),
                              floatingBar(
                                  Icons.local_laundry_service, "Laundary"),
                              floatingBar(Icons.whatshot, "Geyser"),
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
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "About",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "eyrgrerg ra grgehreteyy r eyrgrerg ra grgehreteyy rgethr r eyrgrerg ra grgehreteyy r eyrgrerg ra grgehreteyy r eyrgrerg ra grgehreteyy About r eyrgrerg ra grgehreteyy r eyrgrerg ra grgehreteyy About r eyrgrerg ra grgehreteyy rgethr",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
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
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey[300],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.map,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Location",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HotelReviews()),
                            //Add Verification page
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.grey[300],
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Reviews",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey[300],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.photo,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Photos",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey[300],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.library_books,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Similar",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
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
                              builder: (context) => HotelBooking(
                                  "Hotel Room Booked",
                                  "Hotel Sky Garden",
                                  "City Park, Manhattan",
                                  "\$115.00",
                                  "Check-in",
                                  "Chech-out",
                                  "23 Jun, 11:00 am",
                                  "24 Jun, 10:00 am",
                                  "Room Number",
                                  "",
                                  "Total Guests",
                                  "B112",
                                  "",
                                  "02",
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
                      )),
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
