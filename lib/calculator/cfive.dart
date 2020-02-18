import 'dart:ui';

import 'package:Rajputana/Widgets/navigations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CfivePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return CfivePageState();
  }
}

class CfivePageState extends State<CfivePage> {
  String result = '0.0';
  int lock = 0;

  TextStyle bold = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700);

  TextEditingController di = new TextEditingController();
  TextEditingController dm = new TextEditingController();
  TextEditingController l = new TextEditingController();
  

  CfourPageState() {}

  

  _calculate() {
    if (this.dm.text == '' &&
        this.di.text == '' &&
        this.l.text == '') {
      print('Error');
    } else {
      double dm = double.parse(this.dm.text);
      // double di = double.parse(this.di.text);
      double l = double.parse(this.l.text);
      
      double res = (dm*dm*0.001*0.001*l*7700);
      // res = res + (mn / 6) + ((cr + mo + v) / 5) + ((ni + cu) / 15);

      this.setState(() {
        this.result = res.toStringAsFixed(3);
      });
    }
  }

  conintomm(){
        
       if(this.lock==0){

         this.setState(() {
           this.lock = 1;
           dm.text = '';
         });
          
          double inch = double.parse(di.text);
          double mm = inch*25.4;  
          String kk = mm.toStringAsFixed(3);
          dm.text = "$kk";

          this.setState(() {
            this.lock= 0;
          });

       }else if(di.text==''){
         this.setState(() {this.lock = 0; dm.text='';});
         print('locked');
       }
        

  }
  conmmtoin(){


if(this.lock==0){

         this.setState(() {
           this.lock = 1;
           di.text='';
           double mm = double.parse(dm.text);
          double inch = mm*0.0393701;  
            String kk = inch.toStringAsFixed(3);
          di.text = "$kk";

         });
          
          
          this.setState(() {
            this.lock= 0;
          });

       }else if(dm.text==''){
         this.setState(() {this.lock = 0; di.text='';});
         print('locked');
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Square Bar Weight',
                                        style: TextStyle(
                                            fontSize: 25, fontWeight: FontWeight.w800),
                                      ),
                                      Container(
                                    height: 5,
                                    width: 150,
                                    color: Color(0xffbd4417),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'Weigth : $result Kg',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                    ],
                                  ),
                                ),
                                Container(
                                        height:  MediaQuery.of(context).size.height*0.15,
                                      ),
                                
                                
                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                       width: width*0.3,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Width : ',
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
                                          controller: di,
                                          onChanged: (a){
                                            conintomm();
                                          }
                                          ,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Width(in)',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: width*0.3,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Width : ',
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
                                         onChanged: (a){
                                            conmmtoin();
                                          },
                                          controller: dm,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Width(mm) ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8.0, bottom: 40),
                                  child: new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                     width: width*0.3,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15.0),
                                          child: Text(
                                            ' Length : ',
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
                                          controller: l,
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.red,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: ' Length ',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: _calculate,
                                      child: new Container(
                                        alignment:Alignment.center,
                                          height: height*0.15,
                                    width: width*0.7,
                                        
                                        decoration: BoxDecoration(
                                            color: Color(0xffbd4417),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Text(
                                          'Calculate',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 25,fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ],
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
