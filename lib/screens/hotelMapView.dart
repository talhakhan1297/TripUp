import 'package:TripUp/screens/hotelInfo.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HotelMapView extends StatefulWidget {
  @override
  _HotelMapViewState createState() => _HotelMapViewState();
}

class _HotelMapViewState extends State<HotelMapView> {
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
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            //mainAxisSize: MainAxisSize.min,
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
                              Icons.close,
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
                            "Manhattan, USA",
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
                            "Check-in 23 Jul",
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
                            "Check-out 27 Jul",
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
                            "2 Guest",
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
                height: deviceInfo.size.height - 106,
                width: deviceInfo.size.width,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: const LatLng(24.860735, 67.001137),
                    zoom: 10.0,
                  ),
                  markers: _markers.values.toSet(),
                ),
              ), //MapView
            ],
          ),
          Positioned(
            bottom: 24,
            child: Container(
              width: deviceInfo.size.width,
              child: HotelList(
                "Hotel Sky Garden",
                "For 2 Guest",
                "City Park, Manhattan",
                100.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HotelList extends StatelessWidget {
  final String hotelName;
  final String numGuests;
  final String hotelLocation;
  final double price;

  HotelList(
    this.hotelName,
    this.numGuests,
    this.hotelLocation,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 4),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => prefix0.HotelInfo()),
            //Add Verification page
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
                                    "$hotelName",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 4.0, left: 12),
                                  child: Text(
                                    "$hotelLocation",
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
                                  "$numGuests",
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
            )
          ],
        ),
      ),
    );
  }
}
