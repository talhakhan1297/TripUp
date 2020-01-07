import 'package:TripUp/screens/busInfo.dart';
import 'package:TripUp/screens/cabInfo.dart';
import 'package:TripUp/screens/flightInfo.dart';
import 'package:TripUp/screens/holidayInfo.dart';
import 'package:TripUp/screens/homestaysInfo.dart';
import 'package:TripUp/screens/hotelInfo.dart';
import 'package:TripUp/screens/trainInfo.dart';
import 'package:TripUp/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child,
        );
      },
      //home: WelcomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/hotelInfo': (context) => HotelInfo(),
        '/flightInfo': (context) => FlightInfo(),
        '/busInfo': (context) => BusInfo(),
        '/trainInfo': (context) => TrainInfo(),
        '/holidayInfo': (context) => HolidayInfo(),
        '/homestayInfo': (context) => HomestaysInfo(),
        '/cabInfo': (context) => CabInfo(),
      },
      //home: MyHomePage(title: 'Flutter Demo Home Page Lalal'),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
