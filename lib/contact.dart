import 'dart:ui';

import 'package:Rajputana/Widgets/navigations.dart';
import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.darts';
// import 'package:url_launcher/url_launcher.dart';



class ContactPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return ContactPageState();
  }
}

class ContactPageState extends State<ContactPage> {
  TextStyle bold = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700);

  TextStyle datt = TextStyle(fontSize: 22, fontWeight: FontWeight.w800);



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
                            'Contact us ',
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
                    Navv(7),
                    Container(
                       height: MediaQuery.of(context).size.height * 0.85,
                       
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: SingleChildScrollView(
                        child: Container(
                          
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height*0.3,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on,
                                              color: Color(0xffbd4417),
                                              size: width*0.1,
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: const EdgeInsets.only(left:8.0),
                                                child: Container(
                                                  child: Text(
                                                    '213, Madhavas,Halol Kalol Road, Halol,Dist-Pamchamahal, Vadodra, Gujrat',
                                                    style: datt,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.phone,
                                          color: Color(0xffbd4417),
                                          size: width*0.1,
                                        ),
                                        Text(
                                          '  +91 988983939',
                                          style: datt,
                                        )
                                      ],
                                    ),
                                  ),
                                  
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.email,
                                          color: Color(0xffbd4417),
                                          size: width*0.1,
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:8.0),
                                            child: Container(
                                              child: Text(
                                                'support@rajputanastainless.com',
                                                style: datt,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                    ],
                                  ),
                                ),
                                
                               Container(
                                 
                                 height:MediaQuery.of(context).size.height*0.55,
                                 width: MediaQuery.of(context).size.width*0.8,
                                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                //  child: WebView(
                                   
                                //    initialUrl:'https://rajputana01.netlify.com',
                                //    javascriptMode: JavascriptMode.unrestricted,
                                //  ),
                               )
                              ],
                            ),
                          ),
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
