import 'package:facebook_clone/widgets/Home/menubar.dart';
import 'package:facebook_clone/widgets/Home/post.dart';
import 'package:facebook_clone/widgets/Home/postbar.dart';
import 'package:facebook_clone/widgets/Home/storybar.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 8),
      child: ListView(
        children: [
          Postbar(),
          Divider(thickness: 1,color: Colors.black12,),
          Menubar(),
           Divider(thickness: 1,color: Colors.black12,),
           Storybar(),
           Divider(thickness: 1,color: Colors.black12,),
           Post(),
        ],
      ),
    );
  }
}