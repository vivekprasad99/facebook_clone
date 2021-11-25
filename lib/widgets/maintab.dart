import 'package:facebook_clone/pages/friend_page.dart';
import 'package:facebook_clone/pages/home_page.dart';
import 'package:facebook_clone/pages/market_page.dart';
import 'package:facebook_clone/pages/message_page.dart';
import 'package:facebook_clone/pages/notification_page.dart';
import 'package:facebook_clone/pages/video_page.dart';
import 'package:facebook_clone/widgets/Home/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart';

class MainTab extends StatefulWidget {
  const MainTab({ Key? key }) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined),),
    Tab(icon: Icon(Icons.people_outlined),),
    Tab(icon: Icon(Icons.message_outlined),),
    Tab(icon: Badge(
      badgeContent: Text("3",style: TextStyle(fontSize: 18.0,color: Colors.white)),
      child: Icon(Icons.notifications_outlined)),),
    Tab(icon: Icon(Icons.video_library_outlined),),
    Tab(icon: Icon(Icons.shopping_bag_outlined),),
  ];

  Future<bool> _onWillPop() async{
    if(tabController.index == 0)
    {
      await SystemNavigator.pop();
    }

    Future.delayed(Duration(microseconds: 2000),(){
      tabController.index = 0;
    });

    return tabController.index == 0;
  }

  final _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
        super.initState();
    tabController = TabController(length: topTabs.length,vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          title: Text('facebook',style: TextStyle(fontSize: 34,color: Colors.blue[700],fontFamily: 'klavika'),), 
          actions: [
            Container(
              child: IconButton(
                icon: Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: (){print("hello");},
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300]
                ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                icon: Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: (){
                  _scaffoldkey.currentState!.openEndDrawer();
                  },
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300]
                ),
            ),
          ],
          bottom: TabBar(
            controller: tabController,
            indicatorColor: Colors.black,
            tabs: topTabs,
            ),
          ),
          endDrawer: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: MyDrawer(),
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              HomePage(),
              FriendsPage(),
              MessagePage(),
              NotificationPage(),
              VideoPage(),
              MarketPage(),
            ],
          ),
      ),
    );
  }
}