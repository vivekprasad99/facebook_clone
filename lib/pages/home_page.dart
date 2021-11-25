
import 'package:facebook_clone/widgets/home/menubar.dart';
import 'package:facebook_clone/widgets/home/post.dart';
import 'package:facebook_clone/widgets/home/postbar.dart';
import 'package:facebook_clone/widgets/home/storybar.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: ListView(
        children: [
          Postbar(),
          Divider(thickness: 1, color: Colors.black12),
          Menubar(),
          Divider(thickness: 1, color: Colors.black12),
          Storybar(),
          Divider(thickness: 1, color: Colors.black12),
          Post(),
        ],
      ),
    );
  }
}
