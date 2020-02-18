import 'dart:ui';

import 'package:Rajputana/Widgets/navigations.dart';
import 'package:Rajputana/calculator/cfive.dart';
import 'package:Rajputana/calculator/cfour.dart';
// import 'package:Rajputana/calculator/ctwo.dart';
// import 'package:Rajputana/cone.dart';
import 'package:flutter/material.dart';

// import 'cone.dart';
import 'calculator/cone.dart';
import 'calculator/csix.dart';
import 'calculator/ctwo.dart';
import 'calculator/cthree.dart';

class CalcPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return CalcPageState();
  }
}

class CalcPageState extends State<CalcPage> {


  _gotoone() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new ConePage())) ;
  }
  
  _gototwo() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new CtwoPage())) ;
  }
  _gotothree() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new CthreePage())) ;
  
  }
  _gotofour() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new CfourPage())) ;
  }
  _gotofive() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new CfivePage())) ;
  }
  _gotosix() {

    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new CsixPage())) ;
  }
  
  _gotoseven() {

    // Navigator.push(
    //     context, new MaterialPageRoute(builder: (context) => new SevenPage())) ;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

  TextStyle bold =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold,);
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: width*0.055, fontWeight: FontWeight.w700);

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
                width: width,
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
                            'Calculator',
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
                width: width,
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Navv(3),
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
                                  height: width*0.15,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text(
                                    'Carbon Equivalent Number',
                                    style: names,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(onTap: _gototwo,
                                                          child: Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: new Container(
                                  alignment: Alignment(0, 0),
                                height: width*0.15,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'Pitting Resistance Number',
                                     textAlign: TextAlign.center,
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
                                 height: width*0.15,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'Ferrite Number',
                                     textAlign: TextAlign.center,
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
                                  height: width*0.15,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'Round Bar Number',
                                     textAlign: TextAlign.center,
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
                                  height: width*0.15,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'Square Bar Number',
                                     textAlign: TextAlign.center,
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
                                  height: width*0.15,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                      color: Color(0xffbd4417),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Text(
                                    'Hex Bar Number',
                                     textAlign: TextAlign.center,
                                    style: names,
                                  ),
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                    new Enquiry()
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
