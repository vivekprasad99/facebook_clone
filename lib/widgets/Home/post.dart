import 'package:facebook_clone/models/post_models.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < postData.length; i++) ...[
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    iconSize: 50.0,
                    icon: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('images/user/u1.jpg'),
                    )),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        postData[i].name,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Wrap(
                        spacing: 10.0,
                        children: [
                          Text(
                            '12 min ago',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Icon(Icons.public),
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 30.0,
                  icon: Icon(Icons.more_horiz_outlined),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        postData[i].postTitle,
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      )),
                  Image(image: AssetImage(postData[i].postImage)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.thumb_up_alt_outlined)),
                    Text(
                      '12',
                      style: TextStyle(fontSize: 18.0),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.message_outlined)),
                    Text(
                      '10',
                      style: TextStyle(fontSize: 18.0),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.share_outlined)),
                  ],
                ),
              ],
            )
          ]
        ],
      ),
    );
  }
}
