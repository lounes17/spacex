import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacex/screen/launches_screen.dart';
import 'package:spacex/screen/rocktes_screen.dart';
import 'package:spacex/screen/upcoming_screen.dart';
import 'package:spacex/shared/navigation_drawer.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _UpcomingScreenState createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SpaceX",
          style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold,fontFamily: ""),
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            child: Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                color: Colors.black,
                child: Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        child: TabBar(
                          labelColor: Color(0xffFF003D),

                          indicator: MaterialIndicator(
                            color: Color(0xffFF003D),
                            height: 5,
                            topLeftRadius: 8,
                            topRightRadius: 8,
                            bottomLeftRadius: 8,
                            bottomRightRadius: 8,
                            horizontalPadding: 30,
                          ),
                          unselectedLabelColor: Colors.grey[400],
                          tabs: [
                            Tab(
                              child: Text(
                                "Upcoming",
                                style: TextStyle(
                                    fontSize: 18, fontFamily: "sans google"),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Launches",
                                style: TextStyle(
                                    fontSize: 18, fontFamily: "sans google"),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Rockets",
                                style: TextStyle(
                                    fontSize: 18, fontFamily: "sans google"),
                              ),
                            ),
                          ],
                          controller: _tabController,
                          indicatorColor: Color(0xFFFF003D),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFfafafa),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    //margin: EdgeInsets.only(top: 34),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: TabBarView(
              children: [
                UpcomingScreen(),
                LaunchesScreen(),
                RocktesScreen(),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
      drawer: NavigationDrawer(),
    );
  }
}
