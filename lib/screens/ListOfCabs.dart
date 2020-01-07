import 'package:flutter/material.dart';
import 'package:TripUp/screens/cabInfo.dart';

class ListOfCabs extends StatefulWidget {
  @override
  _ListOfCabsState createState() => _ListOfCabsState();
}

class _ListOfCabsState extends State<ListOfCabs> {
  List<CabList> listOfTrains = [
    CabList(
      "Maruti Swift",
      "Opera Taxi Service",
      "Hatchback Car",
      120.00,
      "assets/images/plane.png",
      "4 Seater",
    ),
    CabList(
      "Maruti Swift",
      "Opera Taxi Service",
      "Hatchback Car",
      120.00,
      "assets/images/plane.png",
      "4 Seater",
    ),
    CabList(
      "Maruti Swift",
      "Opera Taxi Service",
      "Hatchback Car",
      120.00,
      "assets/images/plane.png",
      "4 Seater",
    ),
    CabList(
      "Maruti Swift",
      "Opera Taxi Service",
      "Hatchback Car",
      120.00,
      "assets/images/plane.png",
      "4 Seater",
    ),
    CabList(
      "Maruti Swift",
      "Opera Taxi Service",
      "Hatchback Car",
      120.00,
      "assets/images/plane.png",
      "4 Seater",
    ),
    CabList(
      "Maruti Swift",
      "Opera Taxi Service",
      "Hatchback Car",
      120.00,
      "assets/images/plane.png",
      "4 Seater",
    ),
    CabList(
      "Maruti Swift",
      "Opera Taxi Service",
      "Hatchback Car",
      120.00,
      "assets/images/plane.png",
      "4 Seater",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 16),
                      child: Text(
                        "Pick-up 23 Jul",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
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
                        "Pick-up Time 11:30 am",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: Text(
                        "●",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 16),
                      child: Text(
                        "Hatchback",
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
              child: ListView.builder(
                itemCount: listOfTrains.length,
                itemBuilder: (BuildContext context, int index) {
                  return listOfTrains[index];
                },
              ),
            ),
          ),
          /*Container(
            child: TrainList(
              "American Superfast Express",
              "B15523",
              55,
              "Houston",
              "Manhattan",
              "23 Jun, 12:35 am",
              "23 Jun, 12:35 am",
              "assets/images/plane.png",
              "1 Stop",
              "12 hr 32 mins",
            ),
          ),*/
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
                      /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListOfTrains()),
                            //Add Verification page
                          );*/
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

class CabList extends StatelessWidget {
  final String companyName;
  final String taxiService;
  final String cabType;
  final double price;
  final String image;
  final String seats;

  CabList(
    this.companyName,
    this.taxiService,
    this.cabType,
    this.price,
    this.image,
    this.seats,
  );

  Widget floatingBar(IconData tabIcon, String tabText, bool active) {
    return Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              tabIcon,
              color: active ? Colors.black : Colors.grey,
              size: 15,
            ),
            Text(
              tabText,
              style: TextStyle(
                  color: active ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 4),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CabInfo()),
            //Add Verification page
          );
        },
        child: Card(
          elevation: 5,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment(0.3, 0.0),
                    colors: [Colors.blue, Colors.grey[50]], // whitish to gray
                  ),
                ),
                padding: EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
                            child: Container(
                              height: 55,
                              width: 55,
                              color: Colors.grey[800],
                            ) /*Image(
                                     height: 24,
                                 width: 24,
                                  image: AssetImage('$image'),
                                 fit: BoxFit.contain,
                                ),*/
                            ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, top: 8.0),
                              child: Text(
                                "$companyName",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 4.0, left: 12, bottom: 4.0),
                              child: Text(
                                "$cabType",
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
                      padding: const EdgeInsets.all(12.0),
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
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "$taxiService",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    floatingBar(Icons.airline_seat_recline_normal,
                        "$seats Seater", true),
                    floatingBar(Icons.wifi, "WiFi", true),
                    floatingBar(Icons.work, "2 Bags", true),
                    floatingBar(Icons.ac_unit, "AC", true),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.green),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "4.7",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
