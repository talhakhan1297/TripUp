import 'package:TripUp/screens/aboutUs.dart';
import 'package:TripUp/screens/myReviews.dart';
import 'package:TripUp/screens/support.dart';
import 'package:TripUp/screens/termsConditions.dart';
import 'package:TripUp/screens/welcome.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Account",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0, 12.0, 12),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.grey[800],
                      ), /*Image(
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
                          padding: const EdgeInsets.only(top: 2.0, bottom: 4),
                          child: Text(
                            "Sam Smith",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          "View Profile",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 6,
                    color: Colors.grey[100],
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Support()),
                        );
                      },
                      child: ListItems(Icons.mail, "Support")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutUs()),
                        );
                      },
                      child: ListItems(Icons.assignment_ind, "About us")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TermsConditions()),
                        );
                      },
                      child: ListItems(Icons.assignment, "Terms & Conditions")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyReviews()),
                        );
                      },
                      child: ListItems(Icons.star, "My Reviews")),
                  ListItems(Icons.share, "Share app"),
                  ListItems(Icons.thumb_up, "Rate app"),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomePage()),
                        );
                      },
                      child: ListItems(Icons.power_settings_new, "Logout")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  ListItems(this.icon, this.text);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 0.0, 0.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
