import 'package:Rajputana/Widgets/navigations.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class EnquiryPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return EnquiryPageState();
  }
}

class EnquiryPageState extends State<EnquiryPage> {
  TextStyle bold = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  TextStyle names =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700);
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController company = new TextEditingController();
  TextEditingController message = new TextEditingController();

  _makepostrequest() async {
    // String url = 'https://script.google.com/macros/s/AKfycbzK5nX8hB8A8hz5R9225UV1xdkh0dYrc5Sce5shc4yo6SCBXDc/exec';
    // print(url+'king');
    // Map<String, String> headers = {"Content-type": "application/json"};
    // String na = name.text;
    // String em = email.text;
    // String co = company.text;
    // String me = message.text;

    // String json = '{"name": "$na", "email": "$em", "company": "$co", "message": "$me"}';
    // // make POST request
    // Response response = await get(url, headers: headers,);
    // // check the status code for the result
    // int statusCode = response.statusCode;
    // print('$statusCode');

    //   String res = response.body.toString();
    //   print(res);
  }

  what() async {
    print('sending');

    Dio dio = new Dio();

    String na = name.text;
    String em = email.text;
    String co = company.text;
    String me = message.text;

    FormData formData = new FormData.fromMap({
      "name": "$na",
      "email": "$em",
      "company": "$co",
      "message": "$me",
    });
    var response = await dio.post(
        "https://script.google.com/macros/s/AKfycbzK5nX8hB8A8hz5R9225UV1xdkh0dYrc5Sce5shc4yo6SCBXDc/exec",
        data: formData,
        options: Options(followRedirects: true));
    print(response.toString());
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double a = width*0.1+3;
    double b = width*0.1;
    double x = width*0.76+1;
    double y = width*0.76;
    print(a);
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
          child: SingleChildScrollView(
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
                              'Enquiry',
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
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: height*0.8,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 5, right: 5),
                            child: Container(
                              // color: Colors.white,
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Send your Enquiry',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Container(
                                        height: 7,
                                        width: 150,
                                        color: Color(0xffbd4417),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          height: a,
                                          width: x,
                                          decoration: BoxDecoration(
                                              color: Color(0xffbd4417),
                                              borderRadius: BorderRadius.circular(8)),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: b,
                                            width: y,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(8)),
                                            child: TextField(
                                              controller: name,
                                              cursorColor: Colors.red,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700),
                                              decoration: InputDecoration(
                                                hintText: '  Name',
                                                 border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          height: a,
                                          width: x,
                                          decoration: BoxDecoration(
                                              color: Color(0xffbd4417),
                                              borderRadius: BorderRadius.circular(8)),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: b,
                                            width: y,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(8)),
                                            child: TextField(
                                              controller: email,
                                              cursorColor: Colors.red,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700),
                                              decoration: InputDecoration(
                                                hintText: '  Email',
                                                 border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          height: a,
                                          width: x,
                                          decoration: BoxDecoration(
                                              color: Color(0xffbd4417),
                                              borderRadius: BorderRadius.circular(8)),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: b,
                                            width: y,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(8)),
                                            child: TextField(
                                              controller: company,
                                              cursorColor: Colors.red,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700),
                                              decoration: InputDecoration(
                                                hintText: '  Company Name',
                                                 border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          height: width * 0.41,
                                          width: width*0.76,
                                          decoration: BoxDecoration(
                                              color: Color(0xffbd4417),
                                              borderRadius: BorderRadius.circular(8)),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: width * 0.4,
                                            width: width*0.76,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(8)),
                                            child: TextField(
                                              controller: message,
                                              cursorColor: Colors.red,
                                              maxLines:11,

                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700),
                                              decoration: InputDecoration(
                                                hintText: '  Message',
                                                 border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: GestureDetector(
                                      onTap: what,
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color: Color(0xffbd4417),
                                        ),
                                        height: width * 0.1,
                                        width: width * 0.3,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Submit',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
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
      ),
    );
  }
}
