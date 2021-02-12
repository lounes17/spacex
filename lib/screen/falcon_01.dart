import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Falcon01 extends StatefulWidget {
  @override
  _Falcon01State createState() => _Falcon01State();
}

class _Falcon01State extends State<Falcon01> {
  static TextStyle _containerText = TextStyle(color: Color(0xFFFF003D),fontSize: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image:DecorationImage(
                        image:AssetImage("images/crs.png"),fit: BoxFit.cover
                    )
                ),

              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text("ROCKET",style: _containerText,),
                  SizedBox(height:5),
                  Text("Falcon 1",style : TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height:35),

                  buildContainer("LAUNCH DATE","01-03-2019"),
                  buildContainer("LAUNCH SITE","CCAFS SLC 40"),
                  buildContainer("LAUNCH STATUS","Success"),
                  buildContainer("DETAILS","Last launch of the original Falcon 9 v1.0 launch vehicle"),
                  buildContainer("ROCKET SUMMARY","Falcon 9"),
                  buildContainer("TYPE","v1.0"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer("FIRST STAGE","Cores: 4"),
                      buildContainer("SECOND STAGE","Payloads: 150kg"),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("YOUTUBE",style: _containerText,),
                          SizedBox(height: 15,),
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            child: Container(
                              height: 40,
                              width: 110,
                              child: Center(child: Icon(Icons.play_arrow,color:Colors.white)),
                              decoration: BoxDecoration(

                                color:Color(0xffD21F06),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return Falcon01();
                                  }));
                            },
                          ),

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("REDDIT",style: _containerText,),
                          SizedBox(height: 15,),
                          FlatButton(
                            padding: EdgeInsets.all(0),
                            child: Container(
                              height: 40,
                              width: 110,
                              child: Center(child: Icon(Icons.child_care,color:Colors.white)),
                              decoration: BoxDecoration(

                                color:Color(0xffFF5B14),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return Falcon01();
                                  }));
                            },
                          ),

                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 25,),
                  Text("SNEAK PEAK",style: _containerText,),
                  SizedBox(height: 25,),
                  Container(
                    height: 547,
                    width: 391,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:DecorationImage(
                            image:AssetImage("images/Rectangle 2.png"),fit: BoxFit.cover
                        )
                    ),

                  ),






                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildContainer(String title, String details) {
    return Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$title",style: _containerText,),
                      SizedBox(height:5),
                      Text("$details",style : TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(height:35),
                    ],
                  ),
                );
  }
}
