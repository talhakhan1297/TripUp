import 'package:flutter/material.dart';
import 'package:TripUp/screens/flight.dart';
import 'package:TripUp/screens/ListOfHoliday.dart';

class HolidaysPage extends StatefulWidget {
  @override
  _HolidaysPageState createState() => _HolidaysPageState();
}

class _HolidaysPageState extends State<HolidaysPage> {
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
                  padding: EdgeInsets.fromLTRB(24, 8, 24, 14),
                  child: Text(
                    "Search Holiday Packages",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(58, 24, 24, 4),
                  child: Text(
                    "From",
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
                        Icons.my_location,
                        color: Colors.blue,
                        size: 18,
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white54,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.only(bottom: 8, left: 8, top: 2),
                              hintText: "HOU - Houstone, USA",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(58, 36, 24, 4),
                  child: Text(
                    "To",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 18,
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white54,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.only(bottom: 8, left: 8, top: 2),
                              hintText: "MHK - Manhattan, USA",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Flexible(child: BottomPartHoliday()),
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
                            builder: (context) => ListOfHolidays()),
                        //Add Verification page
                      );
                    },
                    child: Center(
                      child: Text(
                        "SHOW RESULTS",
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

class BottomPartHoliday extends StatefulWidget {
  @override
  _BottomPartHolidayState createState() => _BottomPartHolidayState();
}

class _BottomPartHolidayState extends State<BottomPartHoliday> {
  var selectedRange = RangeValues(100, 1000);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 20),
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Info("SELECT MONTH OF TRAVEL", "November 2019", "", ""),
            IconButton(
              padding: EdgeInsets.only(top: 24),
              icon: Icon(Icons.arrow_drop_down),
              onPressed: () {},
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 0, top: 24),
          child: Info("BUDGET (OPTIONAL)", "", "", ""),
        ),
        RangeSlider(
          values: selectedRange,
          onChanged: (RangeValues newRange) {
            setState(() => selectedRange = newRange);
          },
          divisions: 100,
          min: 100,
          max: 1000,
          labels: RangeLabels('${selectedRange.start}', '${selectedRange.end}'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '\$${selectedRange.start}',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            ),
            Text(
              '\$${selectedRange.end}',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
