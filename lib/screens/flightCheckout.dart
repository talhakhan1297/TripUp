import 'package:TripUp/screens/flightTickets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlightCheckout extends StatefulWidget {
  @override
  _FlightCheckoutState createState() => _FlightCheckoutState();
}

class _FlightCheckoutState extends State<FlightCheckout> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;

  /*List<Cards> lst = [
    Cards("Credir Card", "", isSelected[0]),
    Cards("Credir Card", "", isSelected[1]),
  ];*/

  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Expanded(
              child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 16.0),
                    child: Text(
                      'Checkout',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    color: Colors.grey[50],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 0.0),
                          child: Text(
                            'Select Payment Method',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          width: deviceInfo.size.width,
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (isSelected1 == false) {
                                          isSelected1 = true;
                                          isSelected2 = false;
                                          isSelected3 = false;
                                          isSelected4 = false;
                                          isSelected5 = false;
                                          isSelected6 = false;
                                        }
                                      });
                                    },
                                    child:
                                        Cards("Credit Card", "", isSelected1)),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (isSelected2 == false) {
                                          isSelected2 = true;
                                          isSelected1 = false;
                                          isSelected3 = false;
                                          isSelected4 = false;
                                          isSelected5 = false;
                                          isSelected6 = false;
                                        }
                                      });
                                    },
                                    child: Cards("PayPal", "", isSelected2)),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (isSelected3 == false) {
                                          isSelected3 = true;
                                          isSelected1 = false;
                                          isSelected2 = false;
                                          isSelected4 = false;
                                          isSelected5 = false;
                                          isSelected6 = false;
                                        }
                                      });
                                    },
                                    child:
                                        Cards("PayU Money", "", isSelected3)),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (isSelected4 == false) {
                                          isSelected4 = true;
                                          isSelected1 = false;
                                          isSelected3 = false;
                                          isSelected2 = false;
                                          isSelected5 = false;
                                          isSelected6 = false;
                                        }
                                      });
                                    },
                                    child:
                                        Cards("Credit Card", "", isSelected4)),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (isSelected5 == false) {
                                          isSelected5 = true;
                                          isSelected2 = false;
                                          isSelected3 = false;
                                          isSelected4 = false;
                                          isSelected1 = false;
                                          isSelected6 = false;
                                        }
                                      });
                                    },
                                    child: Cards("PayPal", "", isSelected5)),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (isSelected6 == false) {
                                          isSelected6 = true;
                                          isSelected1 = false;
                                          isSelected3 = false;
                                          isSelected4 = false;
                                          isSelected5 = false;
                                          isSelected1 = false;
                                        }
                                      });
                                    },
                                    child:
                                        Cards("PayU Money", "", isSelected6)),
                              ],
                            ),
                          ),
                        ),

                        /*ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 16, 0, 16),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (!isSelected[index]) {
                                        setState(() {
                                          for (int i = 0; i <= 2; i++) {
                                            if (i == index) {
                                              isSelected[i] = true;
                                            }
                                            isSelected[i] = false;
                                          }
                                        });
                                      }
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: isSelected[index]
                                                  ? Colors.blue
                                                  : Colors.transparent),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: lst[index],
                                    ),
                                  ),
                                );
                              },
                            )),*/
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0.0),
                    child: Text(
                      'Card Number',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 0.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(style: BorderStyle.none, width: 0)),
                        fillColor: Colors.blue[10],
                        filled: true,
                        hintText: null,
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                    child: Text(
                      'Name on Card',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 0.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(style: BorderStyle.none, width: 0)),
                        fillColor: Colors.blue[10],
                        filled: true,
                        hintText: null,
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Expiry Date',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 10.0, 0.0, 0.0),
                              child: Container(
                                width: (deviceInfo.size.width) / 2.5,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8.0),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            style: BorderStyle.none, width: 0)),
                                    fillColor: Colors.blue[10],
                                    filled: true,
                                    hintText: null,
                                  ),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Security Code',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Container(
                                width: (deviceInfo.size.width) / 2.5,
                                child: TextFormField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(3)
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8.0),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            style: BorderStyle.none, width: 0)),
                                    fillColor: Colors.blue[10],
                                    filled: true,
                                    hintText: null,
                                  ),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
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
                            builder: (context) => Tickets(
                                "Ticket Booked",
                                "American Airlines",
                                "AA-1264",
                                "\$165.50",
                                "Houstone, USA",
                                "HOU",
                                "Manhattan, USA",
                                "MHK",
                                Icons.flight,
                                '',
                                "Departure",
                                "Arrival",
                                "23 Jun, 12:35 am",
                                "24 Jun, 10:00 am",
                                "Class",
                                "Gate",
                                "Seat",
                                "Economy",
                                "C11",
                                "B12",
                                "Passenger name",
                                "Age",
                                "Gender",
                                "Sam Smith",
                                "25",
                                "Male")),
                        //Add Verification page
                      );
                    },
                    child: Center(
                      child: Text(
                        "PAY \$165.00",
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

class Cards extends StatelessWidget {
  Cards(this.cardCompany, this.image, this.isSelected);

  final bool isSelected;
  final String cardCompany;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 8, 16),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: isSelected ? Colors.blue : Colors.transparent),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Image(
                     image: AssetImage(
                     '$image'),
                      alignment: Alignment.topLeft,
                       width: 50.0,
                         height: 30.0,
                          ),*/
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 16, 40, 0),
              child: Container(
                width: 70.0,
                height: 40.0,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "$cardCompany",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
