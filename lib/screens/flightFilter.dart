import 'package:flutter/material.dart';

class FlightFilter extends StatefulWidget {
  @override
  _FlightFilterState createState() => _FlightFilterState();
}

class _FlightFilterState extends State<FlightFilter> {
  bool statePrice = true;
  bool stateDpt = false;
  bool stateArv = false;
  bool stateMN = true;
  bool stateMor = false;
  bool stateAN = false;
  bool stateMdN = false;
  bool arStateMN = true;
  bool arStateMor = false;
  bool arStateAN = false;
  bool arStateMdN = false;

  /// use list here

  double _sliderValue = 100.0;

  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          'Sort & Filters',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 24, 0, 16),
                      child: Text(
                        "SORT BY",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          letterSpacing: 4,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (statePrice == false) {
                                    statePrice = true;
                                    stateDpt = false;
                                    stateArv = false;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: statePrice
                                      ? Colors.blue
                                      : Colors.grey[300],
                                ),
                                height: 45,
                                width: 100,
                                child: Center(
                                  child: Text(
                                    "Price",
                                    style: TextStyle(
                                        color: statePrice
                                            ? Colors.white
                                            : Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (stateDpt == false) {
                                    stateDpt = true;
                                    statePrice = false;
                                    stateArv = false;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color:
                                      stateDpt ? Colors.blue : Colors.grey[300],
                                ),
                                height: 45,
                                width: 100,
                                child: Center(
                                  child: Text(
                                    "Dept. Time",
                                    style: TextStyle(
                                        color: stateDpt
                                            ? Colors.white
                                            : Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (stateArv == false) {
                                    stateArv = true;
                                    stateDpt = false;
                                    statePrice = false;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color:
                                      stateArv ? Colors.blue : Colors.grey[300],
                                ),
                                height: 45,
                                width: 100,
                                child: Center(
                                  child: Text(
                                    "Arrv. Time",
                                    style: TextStyle(
                                        color: stateArv
                                            ? Colors.white
                                            : Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 16),
                      child: Text(
                        "PRICE RANGE",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          letterSpacing: 4,
                        ),
                      ),
                    ),
                    Slider(
                      min: 100.0,
                      max: 1000.0,
                      onChanged: (newRating) {
                        setState(() => _sliderValue = newRating);
                      },
                      value: _sliderValue,
                      label: "$_sliderValue",
                      divisions: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '\$100',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '\$1000',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 16),
                      child: Text(
                        "DEPARTURE TIME",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          letterSpacing: 4,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (stateMN == false) {
                                    stateMN = true;
                                    stateAN = false;
                                    stateMor = false;
                                    stateMdN = false;
                                  }
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color:
                                      stateMN ? Colors.blue : Colors.grey[300],
                                ),
                                height: 45,
                                width: 115,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Icon(
                                            Icons.brightness_4,
                                            color: stateMN
                                                ? Colors.white
                                                : Colors.blue,
                                            size: 16,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Mid Night",
                                              style: TextStyle(
                                                  color: stateMN
                                                      ? Colors.white
                                                      : Colors.blue,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              "00:00 - 04.59",
                                              style: TextStyle(
                                                  color: stateMN
                                                      ? Colors.white
                                                      : Colors.blue,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (stateMor == false) {
                                    stateMor = true;
                                    stateAN = false;
                                    stateMN = false;
                                    stateMdN = false;
                                  }
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color:
                                      stateMor ? Colors.blue : Colors.grey[300],
                                ),
                                height: 45,
                                width: 115,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Icon(
                                            Icons.brightness_3,
                                            color: stateMor
                                                ? Colors.white
                                                : Colors.blue,
                                            size: 16,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Morning",
                                              style: TextStyle(
                                                  color: stateMor
                                                      ? Colors.white
                                                      : Colors.blue,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              "05:00 - 04.59",
                                              style: TextStyle(
                                                  color: stateMor
                                                      ? Colors.white
                                                      : Colors.blue,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (stateAN == false) {
                                    stateAN = true;
                                    stateMor = false;
                                    stateMN = false;
                                    stateMdN = false;
                                  }
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color:
                                      stateAN ? Colors.blue : Colors.grey[300],
                                ),
                                height: 45,
                                width: 115,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Icon(
                                            Icons.brightness_3,
                                            color: stateAN
                                                ? Colors.white
                                                : Colors.blue,
                                            size: 16,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Afternoon",
                                              style: TextStyle(
                                                  color: stateAN
                                                      ? Colors.white
                                                      : Colors.blue,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              "12:00 - 17:59",
                                              style: TextStyle(
                                                  color: stateAN
                                                      ? Colors.white
                                                      : Colors.blue,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 16),
                      child: Text(
                        "ARRIVAL TIME",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          letterSpacing: 4,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Container(
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (arStateMN == false) {
                                      arStateMN = true;
                                      arStateAN = false;
                                      arStateMor = false;
                                      arStateMdN = false;
                                    }
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: arStateMN
                                        ? Colors.blue
                                        : Colors.grey[300],
                                  ),
                                  height: 45,
                                  width: 115,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: Icon(
                                              Icons.brightness_4,
                                              color: arStateMN
                                                  ? Colors.white
                                                  : Colors.blue,
                                              size: 16,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Mid Night",
                                                style: TextStyle(
                                                    color: arStateMN
                                                        ? Colors.white
                                                        : Colors.blue,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "00:00 - 04.59",
                                                style: TextStyle(
                                                    color: arStateMN
                                                        ? Colors.white
                                                        : Colors.blue,
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (arStateMor == false) {
                                      arStateMor = true;
                                      arStateAN = false;
                                      arStateMN = false;
                                      arStateMdN = false;
                                    }
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: arStateMor
                                        ? Colors.blue
                                        : Colors.grey[300],
                                  ),
                                  height: 45,
                                  width: 115,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: Icon(
                                              Icons.brightness_3,
                                              color: arStateMor
                                                  ? Colors.white
                                                  : Colors.blue,
                                              size: 16,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Morning",
                                                style: TextStyle(
                                                    color: arStateMor
                                                        ? Colors.white
                                                        : Colors.blue,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "05:00 - 04.59",
                                                style: TextStyle(
                                                    color: arStateMor
                                                        ? Colors.white
                                                        : Colors.blue,
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (arStateAN == false) {
                                      arStateAN = true;
                                      arStateMor = false;
                                      arStateMN = false;
                                      arStateMdN = false;
                                    }
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: arStateAN
                                        ? Colors.blue
                                        : Colors.grey[300],
                                  ),
                                  height: 45,
                                  width: 115,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: Icon(
                                              Icons.brightness_3,
                                              color: arStateAN
                                                  ? Colors.white
                                                  : Colors.blue,
                                              size: 16,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Afternoon",
                                                style: TextStyle(
                                                    color: arStateAN
                                                        ? Colors.white
                                                        : Colors.blue,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "12:00 - 17:59",
                                                style: TextStyle(
                                                    color: arStateAN
                                                        ? Colors.white
                                                        : Colors.blue,
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "APPLY NOW",
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
