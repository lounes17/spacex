import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingScreen extends StatefulWidget {
  @override
  _UpcomingScreenState createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin:EdgeInsets.only(top: 80) ,
            padding: EdgeInsets.all(16),
            color: Color(0xFFfafafa),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0,top: 15.0,bottom: 15.0),
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(40),
                          child: Container(
                            //height: MediaQuery.of(context).size.height*0.25,
                            //width: double.infinity,
                            width: 85,
                            height: 85,

                            decoration: BoxDecoration(
                                image:DecorationImage(
                                    image:AssetImage("images/crs.png"),fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("LAUNCH",style: TextStyle(color: Color(0xFFFF003D),fontSize: 12),),
                                SizedBox(height:15),
                                Text("Starlink 2",style : TextStyle(color: Color(0xFF000000),fontSize: 20,fontWeight: FontWeight.bold ),),
                                SizedBox(height:15),
                                Text("CCAES SLC 40",style : TextStyle(color: Colors.grey,fontSize: 14),),
                                SizedBox(height:15),
                                Text("16-10-2016",style : TextStyle(color: Colors.grey,fontSize: 14),),

                              ],

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                height: 40,
                ),
                Text("LAUNCH",style: TextStyle(color: Color(0xFFFF003D),fontSize: 12),),
                SizedBox(height:15),
                Text("Starlink 2",style : TextStyle(color: Color(0xFF000000),fontSize: 18, ),),
                SizedBox(height:15),
                Text("LAUNCH SITE",style: TextStyle(color: Color(0xFFFF003D),fontSize: 12),),
                SizedBox(height:15),
                Text("Cape Canaveral Air Force Station Space Launch Complex 40",style : TextStyle(color: Color(0xFF000000),fontSize: 18, ),),
                SizedBox(height:15),
                Text("COUNT DOWN",style: TextStyle(color: Color(0xFFFF003D),fontSize: 12),),
                SizedBox(height:15),
                Text("5 Hrs 30mins more...",style : TextStyle(color: Color(0xFF000000),fontSize: 18, ),),
                SizedBox(height:15),

              ],
            ),
          )
        ],
      ),
    );
  }
}
