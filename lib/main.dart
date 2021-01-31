import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_honey/constants.dart';

import 'sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Honey Login',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
            headline4: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            button: TextStyle(color: kPrimaryColor),
            headline5: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            )),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
          ),
          Positioned(
            top: -40,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/honey.jpg"),
                      fit: BoxFit.none,
                      alignment: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            top: 50,
            right: 0,
            left: 0,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "PERSONEL E-LEARNING\n",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  // TextSpan(
                  //   text: "VİDEOLARI İZLEYEREK KENDİNİ GELİŞTİR",
                  //   style: Theme.of(context).textTheme.headline5,
                  // ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      print("gel");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                      padding:
                          EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "PERSONEL GİRİŞ",
                            style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.black,
                                ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
