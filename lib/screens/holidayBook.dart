import 'package:flutter/material.dart';

class HolidayBooking extends StatefulWidget {
  HolidayBooking(
    this.title,
    this.heading1,
    this.subheading1,
    this.price,
    this.dataHeading1Left,
    this.dataHeading1Right,
    this.dataSubHeading1Left,
    this.dataSubHeading1Right,
    this.dataHeading3Left,
    this.dataHeading3center,
    this.dataHeading3Right,
    this.dataSubHeading3Left,
    this.dataSubHeading3center,
    this.dataSubHeading3Right,
  );

  final String title;
  final String heading1;
  final String subheading1;
  final String price;
  final String dataHeading1Left;
  final String dataHeading1Right;
  final String dataSubHeading1Left;
  final String dataSubHeading1Right;
  final String dataHeading3Left;
  final String dataHeading3center;
  final String dataHeading3Right;
  final String dataSubHeading3Left;
  final String dataSubHeading3center;
  final String dataSubHeading3Right;
  @override
  _HolidayBookingState createState() => _HolidayBookingState(
        this.title,
        heading1,
        subheading1,
        price,
        dataHeading1Left,
        dataHeading1Right,
        dataSubHeading1Left,
        dataSubHeading1Right,
        dataHeading3Left,
        dataHeading3center,
        dataHeading3Right,
        dataSubHeading3Left,
        dataSubHeading3center,
        dataSubHeading3Right,
      );
}

class _HolidayBookingState extends State<HolidayBooking>
    with SingleTickerProviderStateMixin {
  _HolidayBookingState(
    this.title,
    this.heading1,
    this.subheading1,
    this.price,
    this.dataHeading1Left,
    this.dataHeading1Right,
    this.dataSubHeading1Left,
    this.dataSubHeading1Right,
    this.dataHeading3Left,
    this.dataHeading3center,
    this.dataHeading3Right,
    this.dataSubHeading3Left,
    this.dataSubHeading3center,
    this.dataSubHeading3Right,
  );

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

  final String title;
  final String heading1;
  final String subheading1;
  final String price;
  final String dataHeading1Left;
  final String dataHeading1Right;
  final String dataSubHeading1Left;
  final String dataSubHeading1Right;

  final String dataHeading3Left;
  final String dataHeading3center;
  final String dataHeading3Right;
  final String dataSubHeading3Left;
  final String dataSubHeading3center;
  final String dataSubHeading3Right;

  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 0),
            child: Card(
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 24, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 12),
                          width: deviceInfo.size.width - 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 6),
                                    child: Text(
                                      heading1,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    subheading1,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                price,
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: deviceInfo.size.width,
                    height: 100,
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 18, 18, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          dataHeading1Left,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          dataHeading1Right,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          dataSubHeading1Left,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          dataSubHeading1Right,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 0, 18, 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 32.0),
                              child: Text(
                                dataHeading3Left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Text(
                              dataSubHeading3Left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 32.0),
                              child: Text(
                                dataHeading3center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Text(
                              dataSubHeading3center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 32.0),
                              child: Text(
                                dataHeading3Right,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Text(
                              dataSubHeading3Right,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 20,
                        width: 10,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.only(
                                  bottomRight: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0))),
                        ),
                      ),
                      Container(
                          width: deviceInfo.size.width - 60,
                          child: MySeparator(color: Colors.grey)),
                      Container(
                        height: 20,
                        width: 10,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.only(
                                  bottomLeft: const Radius.circular(40.0),
                                  topLeft: const Radius.circular(40.0))),
                        ),
                      ),
                    ],
                  ),
                  TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.blue,
                    tabs: [
                      Tab(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Text(
                          "Day 1",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      )),
                      Tab(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Text(
                          "Day 2",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      )),
                      Tab(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Text(
                          "Day 3",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      )),
                    ],
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
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
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "GET DIRECTION",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 3),
            ),
          ),
        ],
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 2.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
