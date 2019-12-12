import 'package:flutter/material.dart';

class GradientAppBarWithBack extends StatelessWidget {

  final String title;
  final double barHeight = 66.0;

  GradientAppBarWithBack(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Column(

      children: <Widget>[
        new Container(
          margin: new EdgeInsets.only(left: 0.0),
          padding: new EdgeInsets.only(top: statusBarHeight),
          height: statusBarHeight + barHeight,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                new BackButton(color: Colors.white),

                new Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: new Text(title, style:const TextStyle(

                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 36.0

                  ),
                ),
                ),
              ],
          ),

          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [Colors.orange, Colors.white],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
            ),
          ),
        ),
      ],

    );
  }
}