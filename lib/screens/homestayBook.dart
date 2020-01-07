import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomestayBooking extends StatefulWidget {
  HomestayBooking(
    this.title,
    this.heading1,
    this.subheading1,
    this.price,
    this.dataHeading1Left,
    this.dataHeading1Right,
    this.dataSubHeading1Left,
    this.dataSubHeading1Right,
    this.dataHeading2Left,
    this.dataHeading2center,
    this.dataHeading2Right,
    this.dataSubHeading2Left,
    this.dataSubHeading2center,
    this.dataSubHeading2Right,
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
  final String dataHeading2Left;
  final String dataHeading2center;
  final String dataHeading2Right;
  final String dataSubHeading2Left;
  final String dataSubHeading2center;
  final String dataSubHeading2Right;
  final String dataHeading3Left;
  final String dataHeading3center;
  final String dataHeading3Right;
  final String dataSubHeading3Left;
  final String dataSubHeading3center;
  final String dataSubHeading3Right;
  @override
  _HomestayBookingState createState() => _HomestayBookingState(
        this.title,
        heading1,
        subheading1,
        price,
        dataHeading1Left,
        dataHeading1Right,
        dataSubHeading1Left,
        dataSubHeading1Right,
        dataHeading2Left,
        dataHeading2center,
        dataHeading2Right,
        dataSubHeading2Left,
        dataSubHeading2center,
        dataSubHeading2Right,
        dataHeading3Left,
        dataHeading3center,
        dataHeading3Right,
        dataSubHeading3Left,
        dataSubHeading3center,
        dataSubHeading3Right,
      );
}

class _HomestayBookingState extends State<HomestayBooking> {
  _HomestayBookingState(
    this.title,
    this.heading1,
    this.subheading1,
    this.price,
    this.dataHeading1Left,
    this.dataHeading1Right,
    this.dataSubHeading1Left,
    this.dataSubHeading1Right,
    this.dataHeading2Left,
    this.dataHeading2center,
    this.dataHeading2Right,
    this.dataSubHeading2Left,
    this.dataSubHeading2center,
    this.dataSubHeading2Right,
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
  final String dataHeading2Left;
  final String dataHeading2center;
  final String dataHeading2Right;
  final String dataSubHeading2Left;
  final String dataSubHeading2center;
  final String dataSubHeading2Right;
  final String dataHeading3Left;
  final String dataHeading3center;
  final String dataHeading3Right;
  final String dataSubHeading3Left;
  final String dataSubHeading3center;
  final String dataSubHeading3Right;

  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    setState(() {
      _markers.clear();
      final marker = Marker(
        markerId: MarkerId("Marker"),
        position: LatLng(24.860735, 67.001137),
      );
      _markers["Marker"] = marker;
    });
  }

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
            child: Stack(
              children: <Widget>[
                Card(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 6),
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
                                          color: Colors.grey,
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
                        padding: const EdgeInsets.fromLTRB(18, 0, 18, 8),
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
                        padding: const EdgeInsets.fromLTRB(18, 32, 18, 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  dataHeading2Left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  dataSubHeading2Left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
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
                                Text(
                                  dataHeading2center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  dataSubHeading2center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
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
                                Text(
                                  dataHeading2Right,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  dataSubHeading2Right,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
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
                      Container(
                        height: 150,
                        //width: 106,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                          child: GoogleMap(
                            onMapCreated: _onMapCreated,
                            initialCameraPosition: CameraPosition(
                              target: const LatLng(24.860735, 67.001137),
                              zoom: 3.0,
                            ),
                            markers: _markers.values.toSet(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 144,
                  left: 3,
                  child: Row(
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
                          width: deviceInfo.size.width - 58,
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
                ),
              ],
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
