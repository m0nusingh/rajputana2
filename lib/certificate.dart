import 'dart:ui';

import 'package:Rajputana/Widgets/navigations.dart';
import 'package:flutter/material.dart';


class CertPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return CertPageState();
  }
}

class CertPageState extends State<CertPage> {
  TextStyle bold =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold,);
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700);

 
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
                            'Certificates',
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
                    Navv(0),
                    SingleChildScrollView(
                      child: Container(
                        // width: MediaQuery.of(context).size.width - 70,
                        child: Column(
                          children: <Widget>[
                            
                            Image.asset('assets/images/1c.jpg',width: width*0.7,),
                            Image.asset('assets/images/2c.jpg',width: width*0.7,),
                            Image.asset('assets/images/3c.jpg',width: width*0.7,),
                            Image.asset('assets/images/4c.jpg',width: width*0.7,),
                            Image.asset('assets/images/5c.jpg',width: width*0.7,),
                            
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
