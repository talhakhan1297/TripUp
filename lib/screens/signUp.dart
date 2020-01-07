import 'package:flutter/material.dart';
import 'package:TripUp/screens/verificationPage.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

/*Post postFromJson(String str) {
  final jsonData = jsonDecode(str);
  return Post.fromJson(jsonData);
}

String postToJson(Post data) {
  final dyn = data.toJson();
  return jsonEncode(dyn);
}

class Post {
  String firstName;
  String lastName;
  int phone;
  String email;
  String password;

  Post({
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.password,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        firstName: json['firstName'],
        lastName: json['lastName'],
        phone: json['Phone'],
        email: json['email'],
        password: json['password'],
      );

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'Phone': phone,
        'email': email,
        'password': password,
      };
}*/

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  static String firstName;
  static String lastName;
  static int phone;
  static String email;
  static String password;

  ///String url = "http://pure-ocean-46827.herokuapp.com/users/signup";

  /*Post _post = Post(
      firstName: 'ffd',
      lastName: 'hff',
      phone: 45654,
      email: 'fxdhh',
      password: '59874645');

  Future<Post> createPost(Post post) async {
    final response = await http.post(url, body: postToJson(post));
    return postFromJson(response.body);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body:
            // FutureBuilder(
            //  future: createPost(_post),
            // builder: (context, snapshot) {
            //    return
            Column(
          children: <Widget>[
            Container(
              child: Expanded(
                child: ListView(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0.0),
                      child: Text(
                        'Create account',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                      child: Image(
                        image: AssetImage('assets/images/logo.png'),
                        alignment: Alignment.topLeft,
                        width: 65.0,
                        height: 65.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0.0),
                      child: Text(
                        'Enter Full Name',
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
                        onChanged: (text) {
                          List<String> fullName = text.split(' ');
                          firstName = fullName[0];
                          lastName = fullName[fullName.length - 1];
                        },
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                      child: Text(
                        'Email address',
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
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                      child: Text(
                        'Phone Number',
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
                        onChanged: (text) {
                          phone = int.parse(text);
                        },
                        keyboardType: TextInputType.phone,
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 24.0),
                      child: TextField(
                        obscureText: true,
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
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  //flex: 1,
                  child: Container(
                    height: 61,
                    //width: 180,
                    color: Colors.blue,
                    child: FlatButton(
                      onPressed: () {
                        print('first: ' + firstName + 'last: ' + lastName);
                        //print(snapshot.data.body);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerificationPage()),
                          //Add Verification page
                        );
                      },
                      child: Center(
                        child: Text(
                          "SIGN UP NOW",
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
        ) //;
        //     },
        //),
        );
  }
}
