import 'dart:ui';

import 'package:Rajputana/Widgets/navigations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CtwoPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return CtwoPageState();
  }
}

class CtwoPageState extends State<CtwoPage> {
  String result = '0.0';

  TextStyle bold = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700);

  TextEditingController cr = new TextEditingController();
  TextEditingController mo = new TextEditingController();

  TextEditingController n = new TextEditingController();

  CtwoPageState() {}

  _calculate() {
    if (this.cr.text == '' && this.mo.text == '' && this.n.text == '') {
      print('Error');
    } else {
      double cr = double.parse(this.cr.text);
      double mo = double.parse(this.mo.text);
      double n = double.parse(this.n.text);
      double res = cr;
      res = res + (3.3 * mo) + (16 * n);

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
                            width: MediaQuery.of(context).size.width * 0.8,
                            
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        height: MediaQuery.of(context).size.height*0.15,
                                        
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Pitting Resisting Number',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                             Padding(
                                        padding: const EdgeInsets.only(top:5.0,bottom: 6),
                                        child: Container(
                                          height: 5,
                                          width: 200,
                                          color: Color(0xffbd4417),
                                        ),
                                      ),
                                      Text(
                                        'PREN  : $result',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        height:  MediaQuery.of(context).size.height*0.15,
                                      ),

                                      
                                     
                                Container(
                                  height: MediaQuery.of(context).size.height*0.7,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0.0),
                                        child: new Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: width * 0.15,
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
                                              height: height * 0.08,
                                              width: width * 0.5,
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
                                        width: width * 0.15,
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
                                        height: height * 0.08,
                                        width: width * 0.5,
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
                                        width: width * 0.15,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' n : ',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: height * 0.08,
                                        width: width * 0.5,
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
                                            hintText: ' n ',
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
                                      height: width * 0.15,
                                      width: width * 0.7,
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
