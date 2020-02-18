import 'package:Rajputana/Widgets/navigations.dart';

// import 'package:Rajputana/calculator/ctwo.dart';
// import 'package:Rajputana/cone.dart';
import 'package:flutter/material.dart';

class FourpPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return FourpPageState();
  }
}

class FourpPageState extends State<FourpPage> {


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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'CCB',
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Navv(4),
                    Container(
                       height: MediaQuery.of(context).size.height * 0.85,
                      child: SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: Column(
                            children: <Widget>[
                              new Container(
                                height: width * 0.6,
                                width: (MediaQuery.of(context).size.width - 50),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: new AssetImage('assets/images/4.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Continous CB', style: head),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('(Cast Billets)', style: heado),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    'These are used pre-dominantly by forging and rolling mill companies.',
                                    style: shead),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Continuous casting of steel is a process in which liquid steel is continuously solidified into a strand of metal. Depending on the dimensions of the strand, these semi-finished products are called slabs, blooms or billets. It is a feed material for rolling of steel in light section mills, bar mills, and wire rod mills. Steel billets are used in forging of certain products as well as re-rolling, hot forging and ring rolling applications.',
                                  textAlign: TextAlign.justify, style: normal
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Size range:-',
                                      style: shead,
                                    ),
                                    Flexible (child: Container(child: Text('100 x 100 mm, 120 x 120 mm, 130 x 130 mm, 140 x 140 mm, 160 x 160 mm, 200 x 200 mm, 130 x 170 mm', style: normal))),
                                    
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text('Supply Conditions', style: headou),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Length :-',
                                      style: shead,
                                    ),
                                    Text('1-9 meters', style: normal),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Grades :-',
                                      style: shead,
                                    ),
                                    Flexible (child: Container(child: Text('200, 300 & 400 Series, Duplex Grades.  Alloy Steel Grades in various from of Long Products.', style: normal))),
                                   
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Ideal for :-',
                                      style: shead,
                                    ),
                                     Flexible (child: Container(child: Text('Forging, re-rolling and Up-setting. 11e, 9re Supplied in maximum length  up to 9 meters  Alloy Steel length  up to 9 meters  Alloy Steel Grades in various from of Long Products.', style: normal))),
                                   
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
