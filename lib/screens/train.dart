import 'package:flutter/material.dart';
import 'package:TripUp/screens/flight.dart';
import 'package:TripUp/screens/ListOfTrains.dart';

class TrainPage extends StatefulWidget {
  @override
  _TrainPageState createState() => _TrainPageState();
}

class _TrainPageState extends State<TrainPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: deviceInfo.size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/tour.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 24, 8, 0),
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
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Text(
                        "Search Trains",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(58, 0, 24, 4),
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
                                Icons.arrow_upward,
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
                                      contentPadding: EdgeInsets.only(
                                          bottom: 8, left: 8, top: 2),
                                      hintText: "Houstone, USA",
                                      hintStyle: TextStyle(
                                          color: Colors.white, fontSize: 16),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                          child: Icon(
                            Icons.swap_vert,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(58, 0, 24, 4),
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
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 45),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.arrow_downward,
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
                                      contentPadding: EdgeInsets.only(
                                          bottom: 8, left: 8, top: 2),
                                      hintText: "Manhattan, USA",
                                      hintStyle: TextStyle(
                                          color: Colors.white, fontSize: 16),
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
                  ],
                ),
              ),
              Container(
                child: Flexible(
                  child: TabBarView(
                    children: [
                      Container(
                        height: 250,
                        child: BottomPartTrain(),
                      ),
                      Container(
                        height: 250,
                        child: BottomPartTrain(),
                      ),
                    ],
                    controller: _tabController,
                  ),
                ), /*Flexible(
                  flex: 1,
                  child: BottomPart(),
                ),*/
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
                                builder: (context) => ListOfTrains()),
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
          Positioned(
            top: deviceInfo.size.height * 0.465,
            left: 20,
            right: 20,
            child: Container(
              height: deviceInfo.size.height * 0.07,
              //width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              child: TabBar(
                unselectedLabelColor: Colors.blue,
                labelColor: Colors.white,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue),
                tabs: [
                  Tab(text: "One Way"),
                  Tab(text: "Return"),
                ],
                controller: _tabController,
                indicatorColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomPartTrain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 50, left: 24, right: 24, bottom: 20),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Info("DEPARTURE", "23", "July 2019", "Tuesday"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 2, right: 8),
                  child: Container(
                    height: 30,
                    width: 30,
                    color: Colors.grey[200],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.calendar_today),
                      iconSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2, right: 8),
                  child: Container(
                    height: 30,
                    width: 60,
                    color: Colors.grey[200],
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "15 Jul",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          "Today",
                          style: TextStyle(fontSize: 9, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2, right: 8),
                  child: Container(
                    height: 30,
                    width: 60,
                    color: Colors.grey[200],
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            "16 Jul",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          "Tomorrow",
                          style: TextStyle(fontSize: 9, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Info("TRAVELLERS", "01", "Adult", ""),
              Info("", "0", "Children", ""),
              Info("", "0", "Infant", ""),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Info("SELECT PROVIDER", "All Provider", "", ""),
              IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}
