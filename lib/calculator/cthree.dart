import 'dart:ui';

import 'package:Rajputana/Widgets/navigations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CthreePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return CthreePageState();
  }
}

class CthreePageState extends State<CthreePage> {
  String result = '0.0';

  TextStyle bold = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700);

  TextEditingController c = new TextEditingController();
  TextEditingController mn = new TextEditingController();
  TextEditingController cr = new TextEditingController();
  TextEditingController mo = new TextEditingController();
  TextEditingController v = new TextEditingController();
  TextEditingController cu = new TextEditingController();
  TextEditingController si = new TextEditingController();
  TextEditingController n = new TextEditingController();
  TextEditingController co = new TextEditingController();
  TextEditingController ti = new TextEditingController();
  TextEditingController nb = new TextEditingController();

  CthreePageState() {}

  _calculate() {
    if (this.c.text == '' &&
        this.mn.text == '' &&
        this.cr.text == '' &&
        this.mo.text == '' &&
        this.v.text == '' &&
        this.cu.text == '' &&
         this.si.text == '' &&
          this.n.text == '' &&
           this.co.text == '' &&
            this.ti.text == '' &&
        this.nb.text == '') {
      print('Error');
    } else {
      double c = double.parse(this.c.text);
      double mn = double.parse(this.mn.text);
      double cr = double.parse(this.cr.text);
      double mo = double.parse(this.mo.text);
      double v = double.parse(this.v.text);
      double cu = double.parse(this.cu.text);
      double n = double.parse(this.n.text);
        double co = double.parse(this.ti.text);
          double ti = double.parse(this.co.text);
            double nb = double.parse(this.nb.text);
            double si = double.parse(this.si.text);
        
      double res = c;
      res = 50;

      this.setState(() {
        this.result = res.toStringAsFixed(3);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
       double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Exo2',
        primarySwatch: Colors.deepOrange,
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
                        padding: const EdgeInsets.only(top: 20.0),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Navv(3),
                      Container(
                         height: MediaQuery.of(context).size.height * 0.85,
                        child: SingleChildScrollView(
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Carbon Equivalent Number',
                                        style: TextStyle(
                                            fontSize: 25, fontWeight: FontWeight.w800),
                                      ),
                                      Container(
                                    height: 5,
                                    width: 200,
                                    color: Color(0xffbd4417),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'Weldability : $result',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                    ],
                                  ),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width:width*0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Cr : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.5,
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffbd4417),
                                                width: 5,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                        child: TextField(
                                          controller: cr,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' Cr ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width:width*0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Si : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.5,
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffbd4417),
                                                width: 5,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                        child: TextField(
                                          controller: si,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' Si ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width:width*0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Mo : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.5,
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffbd4417),
                                                width: 5,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                        child: TextField(
                                          controller: mo,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' Mo ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width:width*0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Ti : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.5,
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffbd4417),
                                                width: 5,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                        child: TextField(
                                          controller: ti,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' Ti ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width:width*0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Nb : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.5,
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffbd4417),
                                                width: 5,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                        child: TextField(
                                          controller: nb,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' Ni ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width:width*0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' C : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                       height: height*0.08,
                                        width: width*0.5,
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffbd4417),
                                                width: 5,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                        child: TextField(
                                          controller: c,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' C ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8.0, bottom:0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width:width*0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' N : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                       height: height*0.08,
                                        width: width*0.5,
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffbd4417),
                                                width: 5,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                        child: TextField(
                                          controller: n,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' N ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8.0, bottom: 0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width:width*0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Mn : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.5,
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffbd4417),
                                                width: 5,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                        child: TextField(
                                          controller: mn,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' Mn ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8.0, bottom: 0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width:width*0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Cu : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.5,
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffbd4417),
                                                width: 5,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                        child: TextField(
                                          controller: cu,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' Cu ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8.0, bottom: 0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width:width*0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Co : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.5,
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xffbd4417),
                                                width: 5,
                                                style: BorderStyle.solid),
                                          ),
                                        ),
                                        child: TextField(
                                          controller: cu,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' Co ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: _calculate,
                                    child: new Container(
                                      height: height*0.15,
                                      width: width*0.7,
                                      alignment: new Alignment(0, 0),
                                      decoration: BoxDecoration(
                                          color: Color(0xffbd4417),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Text(
                                        'Calculate',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Enquiry()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
