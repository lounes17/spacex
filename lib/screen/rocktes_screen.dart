import 'package:flutter/material.dart';
import 'package:spacex/screen/falcon_01.dart';

class RocktesScreen extends StatefulWidget {
  @override
  _RocktesScreenState createState() => _RocktesScreenState();
}

class _RocktesScreenState extends State<RocktesScreen> {
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
                  child: Column(
                    children: <Widget>[
                      Card(
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
                                        image:AssetImage("images/falconsat01.png"),fit: BoxFit.cover
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
                                    Text("ROCKET",style: TextStyle(color: Color(0xFFFF003D),fontSize: 12),),
                                    SizedBox(height:15),
                                    Text("Falcon 1",style : TextStyle(color: Color(0xFF000000),fontSize: 20,fontWeight: FontWeight.bold ),),
                                    SizedBox(height:15),
                                    FlatButton(
                                      child: Container(
                                        height: 40,
                                        width: 110,
                                        child: Center(child: Text("INACTIVE",style: TextStyle(color: Colors.white),)),
                                        decoration: BoxDecoration(

                                          color:Color(0xffFF0606),
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
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
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
                                        image:AssetImage("images/falcon09.png"),fit: BoxFit.cover
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
                                    Text("ROCKET",style: TextStyle(color: Color(0xFFFF003D),fontSize: 12),),
                                    SizedBox(height:15),
                                    Text("Falcon 9",style : TextStyle(color: Color(0xFF000000),fontSize: 20,fontWeight: FontWeight.bold ),),
                                    SizedBox(height:15),
                                    Container(
                                      height: 40,
                                      width: 110,
                                      child: Center(child: Text("ACTIVE",style: TextStyle(color: Colors.white),)),
                                      decoration: BoxDecoration(

                                        color:Color(0xff16BE27),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),

                                  ],

                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                       Card(
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
                                          image:AssetImage("images/demosat02.png"),fit: BoxFit.cover
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
                                      Text("ROCKET",style: TextStyle(color: Color(0xFFFF003D),fontSize: 12),),
                                      SizedBox(height:15),
                                      Text("Big Falcon",style : TextStyle(color: Color(0xFF000000),fontSize: 20,fontWeight: FontWeight.bold ),),
                                      SizedBox(height:15),
                                      Container(
                                        height: 40,
                                        width: 110,
                                        child: Center(child: Text("INACTIVE",style: TextStyle(color: Colors.white),)),
                                        decoration: BoxDecoration(

                                          color:Color(0xffFF0606),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),

                                    ],

                                  ),
                                ),
                              )
                            ],
                          ),
                        ),


                    ],
                  ),

                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
