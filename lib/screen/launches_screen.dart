import 'package:flutter/material.dart';
 class LaunchesScreen extends StatefulWidget {
   @override
   _LaunchesScreenState createState() => _LaunchesScreenState();
 }

 class _LaunchesScreenState extends State<LaunchesScreen> {
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
                 getCard("images/falconsat01.png","Starlink 2","CCAES SLC 40","16-12-2014"),
                 getCard("images/falcon9.png","DemoSat","AAAES SLC 40","06-07-2018"),
                 getCard("images/demosat02.png","Falcon 9 Test","CCAES SEC 40","18-03-2019"),
                 getCard("images/crs.png","CRS - 2","CAAES SLC 40","18-12-2019"),


               ],
             ),
           )
         ],
       ),
     );
   }

   Padding getCard( String pathImage, String title, String description ,String date) {
     return Padding(
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
                                   image:AssetImage("$pathImage"),fit: BoxFit.cover
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
                               Text("$title",style : TextStyle(color: Color(0xFF000000),fontSize: 20,fontWeight: FontWeight.bold ),),
                               SizedBox(height:15),
                               Text("$description",style : TextStyle(color: Colors.grey,fontSize: 14),),
                               SizedBox(height:15),
                               Text("$date",style : TextStyle(color: Colors.grey,fontSize: 14),),

                             ],

                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               );
   }
 }
