import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:sticky_footer_scrollview/sticky_footer_scrollview.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  get valuesecond => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MoonLight",
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SizedBox(
              height: 700,
              width: 1160,
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    /*(const ListTile(
                      leading: CircleAvatar(backgroundImage: ''),
                      title: Text('ghostlamp'),
                    ),*/
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 200,
                          child: Padding(
                            padding: EdgeInsets.only(left: 60, top: 40),
                            child: Image.asset("assets/images/gl.png"),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              child: SizedBox(
                                width: 700,
                                height: 500,
                                child: Image.asset('assets/images/sidepic.jpg'),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: SizedBox(
                                        height: 70,
                                        width: 300,
                                        child: Text(
                                          'Welcome Back :)',
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: SizedBox(
                                      height: 30,
                                      child: Text(
                                        'To Keep connected with us  please login with your personal',
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: SizedBox(
                                      height: 50,
                                      child: Text(
                                        'information by email address and password',
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: SizedBox(
                                    height: 50,
                                    width: 335,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText: 'Email Address'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: SizedBox(
                                    height: 80,
                                    width: 335,
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Password',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 30, right: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 80, bottom: 30),
                                        child: Text(
                                          "Forgot Password?",
                                          style: const TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextButton(
                                      child: Text(
                                        "     Login Now    ",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(EdgeInsets.all(25)),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.blue),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.blue),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            side:
                                                BorderSide(color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondRoute()),
                                        );
                                      }),
                                  SizedBox(width: 30),
                                  TextButton(
                                      child: Text(
                                        "Create Account",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.black),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondRoute()),
                                        );
                                      }),
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text(
                                      "or you can join with",
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: SizedBox(
                                      width: 40,
                                      child: Image.asset(
                                          'assets/images/google.png'),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10, top: 10),
                                    child: SizedBox(
                                      width: 40,
                                      child: Image.asset(
                                        'assets/images/facebook.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10, top: 10),
                                    child: SizedBox(
                                      width: 40,
                                      child: Image.asset(
                                          'assets/images/twitter.png'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              backgroundColor: Colors.blue.shade900,
              title: Row(
                children: [
                  Image.asset(
                    'assets/images/LOGO3.png',
                    fit: BoxFit.cover,
                    width: 150,
                  ),
                  Row(
                    children: [
                      Text(
                        '',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              actions: [
                Row(children: [
                  TextButton(
                      child: Text(
                        "Home",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute()),
                        );
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    TextButton(
                        child: Text(
                          "About US",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        style: ButtonStyle(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        }),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    TextButton(
                        child: Text(
                          "Facilities",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        style: ButtonStyle(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        }),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Row(children: [
                    TextButton(
                        child: Text(
                          "News and Promos",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        style: ButtonStyle(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute()),
                          );
                        }),
                    SizedBox(
                      width: 30,
                    ),
                  ]),
                ])
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: SizedBox(
                          width: 100,
                          child: Image.asset(
                            'assets/images/profile.png',
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text("User:12309898123"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text('Profile'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Medication'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Appointments'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Payments'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('History'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Settings'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text(
                    'Log Out',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
          body: StickyFooterScrollView(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 40),
                child: Center(
                  child: SizedBox(
                    height: 2000,
                    width: 1160,
                    child: Row(children: [
                      SizedBox(
                        height: 5000,
                        width: 1151,
                        child: Card(
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 480,
                                      width: 1142,
                                      child: Swiper(
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Image.network(
                                            "assets/images/ADS2.png",
                                          );
                                        },
                                        itemCount: 3,
                                        pagination: SwiperPagination(),
                                        control: SwiperControl(),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Now Serving',
                                      style: TextStyle(
                                          fontSize: 42, color: Colors.orange),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Token Number:",
                                      style: TextStyle(
                                        fontSize: 42,
                                        color: Colors.blue.shade800,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "21394123",
                                      style: TextStyle(
                                          fontSize: 72,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Serving Time",
                                      style: TextStyle(fontSize: 32),
                                    ),
                                  ],
                                ),
                                /*Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  ),*/
                                Column(
                                  children: [
                                    Text(
                                      "00:45:15",
                                      style: TextStyle(fontSize: 42),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 230),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 80,
                                            width: 230,
                                            child: Card(
                                              child: Center(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Patients served',
                                                      style: TextStyle(
                                                          fontSize: 24,
                                                          color:
                                                              Colors.blueGrey),
                                                    ),
                                                    Column(
                                                      children: [
                                                        Text(
                                                          "30",
                                                          style: TextStyle(
                                                              fontSize: 32,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 80,
                                                width: 229,
                                                child: Card(
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Performance",
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            color: Colors
                                                                .blueGrey),
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "FAST",
                                                            style: TextStyle(
                                                                fontSize: 32,
                                                                color: Colors
                                                                    .yellow),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 80,
                                                width: 229,
                                                child: Card(
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Your Token No.",
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            color: Colors
                                                                .blueGrey),
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "2130923",
                                                            style: TextStyle(
                                                                fontSize: 32,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 480,
                                      width: 1142,
                                      child: Card(
                                        child: Image.asset(
                                            "assets/images/ADS2.png"),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 480,
                                      width: 1142,
                                      child: Card(
                                        child: Image.asset(
                                            "assets/images/slider2.png"),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              );
            },
            footer: SizedBox(
              height: 300,
              width: 3000,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: SizedBox(
                                  width: 400,
                                  child: Text(
                                    'Data Privacy Office',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: SizedBox(
                                  width: 400,
                                  child: Text(
                                    '8/F Norberto Ty Medical Tower IIManila Doctors Hospital',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: SizedBox(
                                  width: 400,
                                  child: Text(
                                    '(+632)8558-0888 ext. 0611',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: SizedBox(
                                  width: 400,
                                  child: Text(
                                    'privacy@www.maniladoctors.com.ph',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 300,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "or you can join with",
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    width: 40,
                                    child:
                                        Image.asset('assets/images/google.png'),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: SizedBox(
                                    width: 40,
                                    child: Image.asset(
                                      'assets/images/facebook.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: SizedBox(
                                    width: 40,
                                    child: Image.asset(
                                        'assets/images/twitter.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
