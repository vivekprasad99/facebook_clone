import 'package:flutter/material.dart';

class Postbar extends StatelessWidget {
  const Postbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(onPressed: (){}, 
        iconSize: 50,
        icon: CircleAvatar(
          radius: 80.0,
          backgroundImage: AssetImage('images/user/sonam.jpg'),
        )
        ),
        TextButton(onPressed: (){},
         child: Text("what's on your mind?",style: TextStyle(
           fontSize: 18.0,
           color: Colors.grey[600]
         ),
         )
         ),
          Container(
            height: 60,
            child: VerticalDivider(
              color: Colors.black26,
            ),
          ),
          Column(
            children: [
              IconButton(onPressed: (){},
               icon: Icon(Icons.photo_album_outlined)
               ),
               Text("photo"),
            ],
          )
      ],
    );
  }
}