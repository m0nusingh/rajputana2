import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return OnePageState();
  }
}

class OnePageState extends State<OnePage> {
  TextStyle bold =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold);
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700);
  TextStyle headd =
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700);
  TextStyle data = TextStyle(color: Colors.black, fontSize: 25);

  List<List> litems = [
    ['1.4310', '301', 'SUS 301'],
    ['1.4319', '302', 'SUS 302'],
    ['1.4305', '303', 'SUS 303'],
    ['1.4301', '304', 'SUS 304'],
    ['1.4306', '–', 'SUS 304L'],
    ['1.4307', '304L', 'SUS 304L'],
    ['1.4948', '304H', 'SUS F 304H'],
    ['1.4311', '304LN', 'SUS 304 LN'],
    ['–', '304N', '–'],
    ['1.4312', '305', 'SUS 305 J1'],
    ['1.4845', '310', 'SUS 310'],
    ['1.4842', '310S', 'SUS 310 S'],
    ['1.4841', '314', '–'],
    ['1.4401', '316', 'SUS 316'],
    ['1.4404', '316L', 'SUS 316L'],
    ['1.4919', '316H', '–'],
    ['1.4406', '316LN', 'SUS 316LN'],
    ['1.4432', '–', '–'],
    ['1.4435', '–', '–'],
    ['1.4436', '–', '–'],
    ['1.3952', '–', '–'],
    ['1.4571', '316Ti', 'SUS 316Ti'],
    ['1.4438', '317L', 'SUS 317L'],
    ['1.4541', '321', 'SUS 321'],
    ['1.4878', '321H', 'SUS 321H'],
    ['1.4460', '329', 'SUS 329 J1'],
    ['1.4550', '347', 'SUS 347'],
    ['–', '347H SUS', 'SUS 347H'],
    ['–', '201', '–'],
    ['–', '202', '–'],
    ['–', '204', '–'],
    ['–', '204', 'CU	–'],
    ['–', 'XM 19', '–']
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
                            'Austentic Steels',
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
                            width: (MediaQuery.of(context).size.width - 25) / 3,
                            alignment: Alignment(0, 0),
                            child: Text(
                              'JIS',
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
