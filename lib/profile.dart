// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final follower = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  final count = TextStyle(fontSize: 16);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},),
      endDrawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text("lazy_unicorn"),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.arrow_drop_down_outlined),
          ],
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage(
                          'assets/9.jpg'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Flutter_boy",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Followers",
                                style: follower,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "10k",
                                style: count,
                              )
                            ],
                          ),
                          width: double.infinity,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Following",
                                style: follower,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "0",
                                style: count,
                              )
                            ],
                          ),
                          width: double.infinity,
                          margin: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Likes",
                                style: follower,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text("212M", style: count)
                            ],
                          ),
                          width: double.infinity,
                          margin: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Share",
                                style: follower,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text("25M", style: count)
                            ],
                          ),
                          width: double.infinity,
                          margin: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: Text("Posts You Shared",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700)),
            height: 30,
            width: double.infinity,
            color: Colors.black,
          ),
          Container(
            height: 640,
            width: double.infinity,
            color: Colors.black,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                for (var i = 0; i < storyImages.length; i++)
                  Container(
                    height: 10,
                    width: 10,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/${i+1}.jpg')),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orangeAccent,
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> storyImages = [
  'https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1hbnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1533228876829-65c94e7b5025?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnJlZXxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYGsZDoQoBHoPa4ew0UpTKG73ejT2_GKnfAg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe__bFh6DMvdjVyi2dr_V0Hd_7fDi5Jco8LA&usqp=CAU',
  'https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1hbnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1533228876829-65c94e7b5025?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnJlZXxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYGsZDoQoBHoPa4ew0UpTKG73ejT2_GKnfAg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe__bFh6DMvdjVyi2dr_V0Hd_7fDi5Jco8LA&usqp=CAU',
  'https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1hbnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1533228876829-65c94e7b5025?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnJlZXxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYGsZDoQoBHoPa4ew0UpTKG73ejT2_GKnfAg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe__bFh6DMvdjVyi2dr_V0Hd_7fDi5Jco8LA&usqp=CAU',
  'https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1hbnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1533228876829-65c94e7b5025?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnJlZXxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYGsZDoQoBHoPa4ew0UpTKG73ejT2_GKnfAg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe__bFh6DMvdjVyi2dr_V0Hd_7fDi5Jco8LA&usqp=CAU',
  'https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1hbnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1533228876829-65c94e7b5025?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnJlZXxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYGsZDoQoBHoPa4ew0UpTKG73ejT2_GKnfAg&usqp=CAU',
];
