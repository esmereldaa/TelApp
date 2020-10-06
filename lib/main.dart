import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Home/home.dart';
import 'variable.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:nice_button/nice_button.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
   @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telkom App',
      theme: ThemeData(
        primaryColor: PrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home : new MyHomePage(),
      routes: <String, WidgetBuilder> {
        '/homepage' : (BuildContext context) => HomeScreen() 
      });
      }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
   @override
  Widget build(BuildContext context) {
    
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('Depok',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.white
      ),),
      image: new Image.asset('assets/img/icon2.png'),
      backgroundColor: PrimaryColor,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: PrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home : new HomeScreen(),
      routes: <String, WidgetBuilder> {
        '/homepage' : (BuildContext context) => HomeScreen() 
      });
  }
}
