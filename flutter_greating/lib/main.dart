/*
 * @ AUTHOR      : CHRIST IDOURAH (KARATSUBA)
 *
 * @ DATE        : Monday September 23 2019
 *
 * @ COMPANY     : Solid Software Company
 *
 * @ DESCRIPTION : Android app which changes the background color on screen touch
 *
 * @ NAME        : Test app
 *
 * @ Version     : 1.0
 */


import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: MyHomePage(title: 'Greating Solid software'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  /* ***********************************************************************

                      _STATE CONTROL OF THE HOME PAGE

  ************************************************************************ */

  /*
  * @variables : _counter      :  (integer) use in counting how many time the screen has been touched
  *
  *              _initialColor :  (Color)  color background that we found when the app is launched
  *
  *              _text         :  (String) text displayed on the screen
  */

  int _counter = 0;

  Color _initialColor = Color.fromARGB(255, 255, 255, 255);

  String _text = "Hey there";


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // _counter without calling setState(), then the build method would not be

      _counter++;  // increment the counter value by one


      if (_counter < 5) {

        // Display "Hey there" while counter less or equal to 5

        _text = "Hey there";

      }
      else{

        // Otherwise let thank solid software team for this amazing opportunity

        _text = "Thank you Solid software for the opportunity given to me";

        if (_counter == 5){  // if counter is equal to 5

          // Reinitialize the counter to 0 to display the so love "Hey There"

          _counter = 0;
        }
      }
    });
  }

  void _setColor() {

    /*
    * @ local variables: _a            : Random integer from 0 to 255
    *
    *                    _red          : Random integer from 0 to 255 for red color
    *
    *                    _green        : Random integer from 0 to 255 for green color
    *
    *                    _blue         : Random integer from 0 to 255 for blue color
    *
    *                    _random       : Number generator from 0 to 255
    *
    *                    _colorChanger : New color generate from the RGB Color attribute, for the background
    */
    var _random = new Random();

    var _a      = _random.nextInt(255);

    var _red    = _random.nextInt(255);

    var _green  = _random.nextInt(255);

    var _blue   = _random.nextInt(255);

    Color _colorChanger = Color.fromARGB(_a, _red, _green, _blue);

    this._initialColor = _colorChanger;   // Change the initial color by the new
  }


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {

         // This method is called every time the screen is touche, while the app runs

        _incrementCounter();        // Call _incrementCounter method to increment the counter value

        _setColor();               //  Call _setColor method to change the background color
      },

      child: Container(          //  Text container

        height: 36.0,           //   The height of the container

        color: _initialColor, //     initialColor which has the value of white

        child: Center(      //   Center widget used to center the text

          child: Text('$_text', style: TextStyle(
            color:Colors.orange,

            fontFamily: "Open Sans"

          )),

        ),
      ),
    );
  }
}