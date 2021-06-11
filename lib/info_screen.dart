import 'package:flutter/material.dart';
import 'string_data.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25.0),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  width: 8,
                  color: Colors.green,
                )),
                color: Colors.grey,
              ),
              child: Column(
                children: [
                  Text(
                    Strings.firstHeading,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(""),
                  Text(
                    Strings.firstSubHeading,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(child: Image.asset('images/appimage.PNG')),
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 60.0),
              color: Colors.grey[300],
              child: Column(
                children: [
                  Text(
                    Strings.secondHeading,
                    style: TextStyle(fontWeight: FontWeight.w900,
                    color: Colors.black,
                    letterSpacing: 1.5),
                    textAlign: TextAlign.left,
                  ),
                  Text(""),
                  Text(Strings.paragraph),
                  Text(""),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      minimumSize: Size(200, 40),
                      primary: Colors.white,
                      backgroundColor: Colors.grey[900],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "SEE COMPENSATION PROGRAMS",
                          style: TextStyle(letterSpacing: 1.5),
                        ),
                        Icon(Icons.arrow_right_alt),
                        Padding(padding: EdgeInsets.symmetric())
                      ],
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