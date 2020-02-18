import 'dart:ui';

import 'package:Rajputana/Widgets/navigations.dart';
import 'package:flutter/material.dart';

import 'grades/one.dart';
import 'grades/two.dart';
import 'grades/three.dart';
import 'grades/four.dart';
import 'grades/five.dart';
import 'grades/six.dart';
import 'grades/seven.dart';

class GradesPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return GradesPageState();
  }
}

class GradesPageState extends State<GradesPage> {
  TextStyle bold =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold,);
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700);

  _gotoone() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new OnePage())) ;
  }
  
  _gototwo() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new TwoPage())) ;
  }
  _gotothree() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new ThreePage())) ;
  }
  _gotofour() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new FourPage())) ;
  }
  _gotofive() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new FivePage())) ;
  }
  _gotosix() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new SixPage())) ;
  }_gotoseven() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new SevenPage())) ;
  }

  @override
  Widget build(BuildContext context) {
    
     double width = MediaQuery.of(context).size.width;
    
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Exo2',
        // primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Grades',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          ),
                          Container(
                            height: 7,
                            width: 100,
                            color: Color(0xffbd4417),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 10),
                      child: Image.asset(
                        'assets/images/rajputana_logo.png',
                        height: 80,
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                height: MediaQuery.of(context).size.height * 0.85,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Navv(6),
                    SingleChildScrollView(
                      child: Container(
                        // width: MediaQuery.of(context).size.width - 70,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: _gotoone,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 0.0, bottom: 15),
                                child: new Container(
                                  alignment: Alignment(0, 0),
                                  height: width*0.13,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text(
                                    'AUSTENITIC STEELS',
                                    style: names,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(onTap: _gototwo,
                                                          child: Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: new Container(
                                  alignment: Alignment(0, 0),
                                  height: width*0.13,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'BEARING STEELS',
                                    style: names,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                                                     onTap: _gotothree,     child: Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: new Container(
                                  alignment: Alignment(0, 0),
                                  height: width*0.13,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'ALLOY STEELS',
                                    style: names,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(onTap: _gotofour,
                                                          child: Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: new Container(
                                  alignment: Alignment(0, 0),
                                  height: width*0.13,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'DUPLEX STEELS',
                                    style: names,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(onTap: _gotofive,
                                                          child: Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: new Container(
                                  alignment: Alignment(0, 0),
                                  height: width*0.13,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'FERRIC STEELS',
                                    style: names,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(onTap: _gotosix,
                                                          child: Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: new Container(
                                  alignment: Alignment(0, 0),
                                 height: width*0.13,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'MARTENSITIC STEELS',
                                    style: names,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(onTap: _gotoseven,
                                                          child: Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: new Container(
                                  alignment: Alignment(0, 0),
                                 height: width*0.13,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'PRECIPITATION STEELS',
                                    style: names,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Enquiry(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
