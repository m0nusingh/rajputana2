import 'dart:ui';

import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return TwoPageState();
  }
}

class TwoPageState extends State<TwoPage> {
  TextStyle bold =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold);
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700);
  TextStyle headd =
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700);
  TextStyle data = TextStyle(color: Colors.black, fontSize: 25);

  List<List> litems = 
    
[
['EN – 31'	,'100', 'Cr6	52100'],
['H – 11',	'1.2343',	'X37CrMov5-1'],
['H – 13',	'1.2344',	'X40CrMov5-1'],
];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Comfortaa',
        primarySwatch: Colors.blue,
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
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Bearing Steels',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, right: 10, top: 20),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Color(0xffDD380A),
                                  Color(0xffE77310)
                                ],
                              ),
                            ),
                            height: 35,
                            width: (MediaQuery.of(context).size.width - 25) / 3,
                            alignment: Alignment(0, 0),
                            child: Text(
                              'EN',
                              style: headd,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          new Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Color(0xffDD380A),
                                  Color(0xffE77310)
                                ],
                              ),
                            ),
                            height: 35,
                            width: (MediaQuery.of(context).size.width - 25) / 3,
                            alignment: Alignment(0, 0),
                            child: Text(
                              'DIN',
                              style: headd,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          new Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Color(0xffDD380A),
                                  Color(0xffE77310)
                                ],
                              ),
                            ),
                            height: 35,
                            width: (MediaQuery.of(context).size.width - 25) / 3,
                            alignment: Alignment(0, 0),
                            child: Text(
                              'SAE/AISI',
                              style: headd,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height - 210,
                        child: new ListView.separated(
                            separatorBuilder: (context, index) => Divider(
                                  height: 2,
                                  color: Colors.black,
                                ),
                            itemCount: litems.length,
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(0.0),
                            itemBuilder: (BuildContext context, int index) {
                              List now = litems[index];
                              return new Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  40) /
                                              3,
                                              child: Text(now[0], style: data,textAlign: TextAlign.center,),
                                    ),
                                    Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  40) /
                                              3,
                                              child: Text(now[1], style: data,textAlign: TextAlign.center,),
                                    ),
                                    Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  40) /
                                              3,
                                              child: Text(now[2], style: data,textAlign: TextAlign.center,),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
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

//////#DD380A
///#E77310
// Text(now[0], style: data,textAlign: TextAlign.center,),
// Text(now[1], style: data,textAlign: TextAlign.center),
// Text(now[2], style: data,textAlign: TextAlign.center),
