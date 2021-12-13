// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Clicks extends StatefulWidget {
  dynamic i;

  Clicks({this.i});

  @override
  _ClicksState createState() => _ClicksState();
}

class _ClicksState extends State<Clicks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Clicks"),
        backgroundColor: Colors.black,
      ),
      body: ListWheelScrollView(squeeze: 1.1, itemExtent: 600, children: [
        for (var i = 0; i < posts.length; i++)
          Container(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(10),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(4),
                      // ignore: prefer_const_constructors
                      trailing: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.grey,
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(posts[i].description.toString()),
                        radius: 20,
                      ),
                      title: Text(
                        posts[i].user.toString(),
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        "from Sri Lanka",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/${i}.jpg'
                        )),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orangeAccent),
                    ),
                    Divider(),
                    Text(
                      posts[i].location.toString() + " is on the way",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 15),
                    ),
                    Divider(color: Colors.white,),
                    Text(
                      "Awesome places to visit in your holidays",
                      style: TextStyle(color: Colors.white),
                    ),
                    Divider(color: Colors.white,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Icon(Icons.thumb_up_sharp, color: Colors.white,),
                      Icon(Icons.thumb_down , color: Colors.white,),
                      Icon(Icons.report_off_outlined , color: Colors.redAccent,),
                    ],)
                  ],
                ),
              ),
            ),
          ),
      ]),
    );
  }
}

List<String> cards = ["sljkdhfa", "aklsdjfj"];

class PostItems {
  String? user;
  String? description;
  String? comment;
  String? location;

  PostItems({this.user, this.description, this.comment, this.location});
}

List<PostItems> posts = [

  PostItems(
      user: "CleoPetran",
      description:
          'https://media.istockphoto.com/photos/young-man-with-backpack-taking-selfie-portrait-on-a-mountain-smiling-picture-id1329031407?b=1&k=20&m=1329031407&s=170667a&w=0&h=J6qRqj9hbKtSVwIfMJhcRXf3AEyAOshph2IAbPHwNUo=',
      comment: "this is Awesome",
      location: "delhi"),
  PostItems(
      user: "lazy_unicxrn",
      description:
          "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1hbnxlbnwwfHwwfHw%3D&w=1000&q=80",
      comment: "this is Awesome",
      location: "afghanistan"),
  PostItems(
      user: "its_shuhaib",
      description:
          "https://media.istockphoto.com/photos/young-man-shopping-online-picture-id1305615921?b=1&k=20&m=1305615921&s=170667a&w=0&h=nQ1qcUP8MBo5OkghDXZb_nDKgJmxjK7VkAJ4yb0n4-M=",
      comment: "this is Awesome",
      location: "Sri lanka"),
  PostItems(
      user: "trouble_maker",
      description:
          'https://media.istockphoto.com/photos/man-with-a-lantern-at-a-crossroads-in-the-woods-picture-id1283730033?b=1&k=20&m=1283730033&s=170667a&w=0&h=xoiQoV3I8U5zm4n0--d5l91_BxhI6CO6ub7jfAlEBZI=',
      comment: "this is Awesome",
      location: "japan"),
  PostItems(
      user: "CleoPetran",
      description:
          'https://media.istockphoto.com/photos/young-man-with-backpack-taking-selfie-portrait-on-a-mountain-smiling-picture-id1329031407?b=1&k=20&m=1329031407&s=170667a&w=0&h=J6qRqj9hbKtSVwIfMJhcRXf3AEyAOshph2IAbPHwNUo=',
      comment: "this is Awesome",
      location: "delhi"),
];
