import 'package:flutter/material.dart';

class MyReviews extends StatefulWidget {
  @override
  _MyReviewsState createState() => _MyReviewsState();
}

class _MyReviewsState extends State<MyReviews> {
  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 40, 8, 0),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Text(
                    "Reviews by you",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Text(
                    "78 reviews",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: deviceInfo.size.width,
            color: Colors.blueGrey[50],
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
              child: Text(
                "Reviews",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[700]),
              ),
            ),
          ),
          Flexible(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                children: <Widget>[
                  Reviews(
                    "Hotel Green view",
                    "",
                    "22 Jan 19, 11:30 am",
                    "asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds",
                    5,
                  ),
                  Reviews(
                    "White House Villa",
                    "",
                    "22 Jan 19, 11:30 am",
                    "asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds",
                    4,
                  ),
                  Reviews(
                    "John Travels",
                    "",
                    "22 Jan 19, 11:30 am",
                    "asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds",
                    3,
                  ),
                  Reviews(
                    "Hotel Rainbow",
                    "",
                    "22 Jan 19, 11:30 am",
                    "asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds asdghjkjhgfdsasdfghjjhfds",
                    5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Reviews extends StatelessWidget {
  Reviews(
      this.userName, this.profilePic, this.timeStamp, this.review, this.stars);

  final String userName;
  final String profilePic;
  final String timeStamp;
  final String review;
  final int stars;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 8, 0.0, 0),
                            child: Container(
                              height: 35,
                              width: 35,
                              color: Colors.grey[800],
                            ) /*Image(
                                       height: 24,
                                   width: 24,
                                    image: AssetImage(profilePic),
                                   fit: BoxFit.contain,
                                  ),*/
                            ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 6),
                              child: Text(
                                userName,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 2.0, left: 10.0),
                                child: Text(
                                  timeStamp,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 12),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star,
                              size: 15,
                              color: stars >= 1 ? Colors.amber : Colors.grey),
                          Icon(Icons.star,
                              size: 15,
                              color: stars >= 2 ? Colors.amber : Colors.grey),
                          Icon(Icons.star,
                              size: 15,
                              color: stars >= 3 ? Colors.amber : Colors.grey),
                          Icon(Icons.star,
                              size: 15,
                              color: stars >= 4 ? Colors.amber : Colors.grey),
                          Icon(Icons.star,
                              size: 15,
                              color: stars == 5 ? Colors.amber : Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  review,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.blueGrey[50],
          height: 3,
        ),
      ],
    );
  }
}
