import 'package:Rajputana/Widgets/navigations.dart';
import 'package:Rajputana/calculator/cfour.dart';
// import 'package:Rajputana/calculator/ctwo.dart';
// import 'package:Rajputana/cone.dart';
import 'package:flutter/material.dart';

class FivepPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return FivepPageState();
  }
}

class FivepPageState extends State<FivepPage> {
 
 

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
                                'Steel RB',
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
                                    image: new AssetImage('assets/images/5.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Stainless Steel RB', style: head),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('(Round Bars)', style: heado),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    'They have the uncompromising quality standards of RAJPUTANA.',
                                    style: shead),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Our stainless steel bright bars are crafted with high finishing for superior quality and they are massively used in producing mechanical parts, owing to their paramount mechanical properties. Popular applications are found in the manufacturing of machine tools, parts of heavy machines, electric pumps, electric motors, railway engines, coaches, arms, ammunition, automobile parts and many more.',
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
                                    Text('16 mm to 105 mm', style: normal),
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
                                      'Grades :-',
                                      style: shead,
                                    ),
                                     Flexible (child: Container(child: Text('200, 300 & 400 Series, Duplex Grades, Alloy Steel Grades', style: normal))),
                                   
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
                                     Flexible (child: Container(child: Text('Machining, Pistons, Pump Shafts, Forging. Threod Rolling Domestic, Industrial & Engineering ', style: normal))),
                                    
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Proccess :-',
                                      style: shead,
                                    ),
                                    Text('HIRAP Length: 1-6 meters', style: normal),
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
