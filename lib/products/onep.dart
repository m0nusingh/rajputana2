import 'dart:ui';

import 'package:Rajputana/Widgets/navigations.dart';
import 'package:Rajputana/calculator/cfour.dart';
// import 'package:Rajputana/calculator/ctwo.dart';
// import 'package:Rajputana/cone.dart';
import 'package:flutter/material.dart';

class OnepPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return OnepPageState();
  }
}

class OnepPageState extends State<OnepPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    double pxratio = 3.5;

    TextStyle head =
        TextStyle(fontSize: pxratio * 10, fontWeight: FontWeight.w800);
    TextStyle heado = TextStyle(
        color: Color(0xffbd4417),
        fontSize: pxratio * 7,
        fontWeight: FontWeight.w600);

    TextStyle shead =
        TextStyle(fontSize: pxratio * 5, fontWeight: FontWeight.w600);

    TextStyle normal =
        TextStyle(fontSize: pxratio * 4.5, fontWeight: FontWeight.w500);

    TextStyle headou = TextStyle(
        color: Color(0xffbd4417),
        decoration: TextDecoration.underline,
        fontSize: pxratio * 5,
        fontWeight: FontWeight.w700);
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
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Image.asset('assets/images/back.png',
                                width: 30),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Steel RCS',
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
                      ],
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
                    Navv(4),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.85,
                      child: SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Column(
                            children: <Widget>[
                              new Container(
                                height: width * 0.6,
                                width: (MediaQuery.of(context).size.width - 50),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image:
                                        new AssetImage('assets/images/1.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 8, right: 8),
                                child: Text(
                                  'Stainless Steel RCS',
                                  style: head,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    Text('(Round Corner Square)', style: heado),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 2, right: 4),
                                child: Text(
                                    'These are used by forging companies for making flanges and fittings.',
                                    style: shead),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 2, right: 4),
                                child: Text(
                                  'These are created with free of surface defects/cracks as well as they have uniform internal structure, which is an absolute requirement while producing drop forged parts in the automotive industry. The radius edge also creates a safety feature by eliminating sharp edges.',
                                  textAlign: TextAlign.justify,
                                  style: normal,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 2, right: 2),
                                child: new Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Size range:-',
                                      style: shead,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          '63 x 63 mm,  75 x 75 mm,',
                                          style: normal,
                                        ),
                                        Text(
                                          ' 95 x 95 mm',
                                          style: normal,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 2, right: 2),
                                child: Row(
                                  children: <Widget>[
                                    Text('Supply Conditions', style: headou),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 2, right: 2),
                                child: new Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Grades :-',
                                      style: shead,
                                    ),
                                    Flexible(
                                      child: Container(
                                        child: Text(
                                          '200, 300 & 400 Series, Duplex Grades 200, 300 & 400 Series, Duplex Grades Alloy Steel Grades',
                                          style: normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 2, right: 2),
                                child: new Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Ideal for :-',
                                      style: shead,
                                    ),
                                    Text(
                                      'Forging, re-rolling etc',
                                      style: normal,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 2, right: 2),
                                child: new Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Proccess :-',
                                      style: shead,
                                    ),
                                    Text(
                                      'Hot Rolled',
                                      style: normal,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
