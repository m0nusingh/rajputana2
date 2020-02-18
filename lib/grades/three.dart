import 'dart:ui';

import 'package:flutter/material.dart';

class ThreePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return ThreePageState();
  }
}

class ThreePageState extends State<ThreePage> {
  TextStyle bold =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold);
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700);
  TextStyle headd =
      TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700);
  TextStyle data = TextStyle(color: Colors.black, fontSize: 25);

  List<List> litems = [
    ['EN 18', 'EN 18', '37Cr4', '5140'],
    ['EN 19', 'EN 19', '42Cr4Mo2', '4140/4142'],
    ['EN 24', 'EN 24', '34CrNiMo6', '4340'],
    ['EN 353', 'EN 353', '–', '–'],
    ['EN 354', 'EN 354', '–', '4320'],
    ['SAE-8620', 'EN 362', '–', 'SAE 8620'],
    ['EN 1 A', 'EN 1 A', '9SMn28', '1213'],
    ['SAE 1146', 'EN 8M', '–', 'SAE 1146'],
    ['SAE 1146', 'EN 8M', '–', 'SAE 1146'],
    ['EN 31', 'EN 31', '100Cr6', 'SAE 52100'],
    ['EN 45', 'EN 45', '55Si7', '9255'],
    ['EN 45A', 'EN 45A', '60Si7', '9260'],
    ['50CrV4', 'EN 47', '50CrV4', '6150'],
    ['SAE 4130', '–', '25CrMo4', 'SAE 4130'],
    ['SAE 4140', '–', '42CrMO4', 'SAE 4140'],
  ];

List<List> second = [
 [ 'F 5/F 5A',	'K 41545',	'12CrMo195'],
['F 9',	'K 90941',	'X12CrMo91'],
['F 11 (CL2)'	,'K 11572',	'13CrMo44'],
['F 22 (CL3)',	'K 21590'	,'10CrMo910'],
['F 91',	'–',	'X10CrMoVNb9-1']
];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Exo2',
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
          child: SingleChildScrollView(
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
                  // height: MediaQuery.of(context).size.height * 0.85,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Alloy Steels',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 20),
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
                              height: 50,
                              width:
                                  (MediaQuery.of(context).size.width - 25) / 4,
                              alignment: Alignment(0, 0),
                              child: Text(
                                'INTERNAL STANDAARD',
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
                              height: 50,
                              width:
                                  (MediaQuery.of(context).size.width - 25) / 4,
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
                              height: 50,
                              width:
                                  (MediaQuery.of(context).size.width - 25) / 4,
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
                              height: 50,
                              width:
                                  (MediaQuery.of(context).size.width - 25) / 4,
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
                      Container(
                     
                        child: new ListView.separated(
                            separatorBuilder: (context, index) => Divider(
                                  height: 2,
                                  color: Colors.black,
                                ),
                            itemCount: litems.length,
                            physics: const NeverScrollableScrollPhysics(),
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
                                                  25) /
                                              4,
                                      child: Text(
                                        now[0],
                                        style: data,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  25) /
                                              4,
                                      child: Text(
                                        now[1],
                                        style: data,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  25) /
                                              4,
                                      child: Text(
                                        now[2],
                                        style: data,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  25) /
                                              4,
                                      child: Text(
                                        now[3],
                                        style: data,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                //////////////////////////////////////
                ///
                ///
                ///
                 new Container(
              
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 20),
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
                              width:
                                  (MediaQuery.of(context).size.width - 25) / 3,
                              alignment: Alignment(0, 0),
                              child: Text(
                                'ASTM',
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
                              width:
                                  (MediaQuery.of(context).size.width - 25) / 3,
                              alignment: Alignment(0, 0),
                              child: Text(
                                'UNS',
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
                              width:
                                  (MediaQuery.of(context).size.width - 25) / 3,
                              alignment: Alignment(0, 0),
                              child: Text(
                                'DIN',
                                style: headd,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height - 210,
                        child: new ListView.separated(
                            separatorBuilder: (context, index) => Divider(
                                  height: 2,
                                  color: Colors.black,
                                ),
                            itemCount: second.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(0.0),
                            itemBuilder: (BuildContext context, int index) {
                              List now = second[index];
                              return new Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  30) /
                                              3,
                                      child: Text(
                                        now[0],
                                        style: data,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  30) /
                                              3,
                                      child: Text(
                                        now[1],
                                        style: data,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  30) /
                                              3,
                                      child: Text(
                                        now[2],
                                        style: data,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
