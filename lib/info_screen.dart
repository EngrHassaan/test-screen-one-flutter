import 'package:flutter/material.dart';
import 'string_data.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);
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
                  StrUseInApp.firstHeading,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0,
                ), //use sizedbox()
                Text(
                  StrUseInApp.firstSubHeading,
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
          Image.asset(
            'images/appimage.PNG',
            fit: BoxFit.contain,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 60.0),
            color: Colors.grey[300],
            child: Column(
              children: [
                Text(
                  StrUseInApp.secondHeading,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      letterSpacing: 1.5),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(StrUseInApp.paragraph),
                SizedBox(height: 25.0),
                InkWell(
                  onTap: () => print('object'),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Text(
                          'SEE COMPENSATION PROGRAMS',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Positioned(
                        child: Icon(Icons.arrow_forward_ios, color: Colors.white),
                        right: 10,
                        top: 10,
                      ),
                    ],
                  ),
                ),
                // ElevatedButton.icon(onPressed: (){},
                // style: ElevatedButton.styleFrom(
                //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),
                //   ),
                //   primary: Colors.grey[900],
                //   padding: EdgeInsets.all(18.0),
                //   ),

                //  icon:Icon(Icons.arrow_forward_ios),
                //   label: Text("SEE COMPENSATION PROGRAMS"),

                // ),
                // TextButton(
                //   onPressed: () {},

                //   style: TextButton.styleFrom(
                //     minimumSize: Size(100, 40),
                //     primary: Colors.white,
                //     backgroundColor: Colors.grey[900],
                //     padding: EdgeInsets.all(18.0),
                //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),)
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Text(
                //         "SEE COMPENSATION PROGRAMS",
                //         style: TextStyle(letterSpacing: 1.5),
                //       ),
                //       Icon(Icons.arrow_forward_ios),
                //       Padding(padding: EdgeInsets.symmetric())
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
