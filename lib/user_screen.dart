import 'package:flutter/material.dart';
class UserScreen extends StatelessWidget {
  const UserScreen({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(50.0),
          child: Center(
            child: Text('User Screen',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40.0,
              color: Colors.blueAccent,
              letterSpacing: 2.0,
            ),),
          ),
        )
      ],
    );
  }
}