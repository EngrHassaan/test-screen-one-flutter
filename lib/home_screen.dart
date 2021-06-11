import 'package:flutter/material.dart';

class MainHome extends StatelessWidget {
  const MainHome({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(50.0),
          child: Center(
            child: Text('Home Screen',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.blueAccent,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.0,
            ),),
          ),
        )
      ],
    );
  }
}