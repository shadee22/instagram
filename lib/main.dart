// ignore_for_file: prefer_const_constructors

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:insta/chat.dart';
import 'package:insta/en.dart';
import 'package:insta/explore.dart';
import 'package:insta/messages.dart';
import 'package:insta/noti.dart';
import 'package:insta/profile.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:spring/spring.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final url = "http://assets.stickpng.com/images/580b57fcd9996e24bc43c521.png";
    return MaterialApp(
      // home: Feed()      
     home :  SplashScreenView(
        textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white , fontSize: 40),
        text: "Instagram By SL_PROGRAMMER",
        navigateRoute: Feed(),
        duration: 2500,
        imageSrc:url,
        imageSize: 100,
        textType: TextType.ScaleAnimatedText,
        backgroundColor: Colors.black,
      ),
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  SpringController s0 = SpringController(initialAnim: Motion.pause);
  bool liked = false;

  final black = Colors.black;
  int tab = 0;

  @override
  Widget build(BuildContext context) {
    if (liked) {
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          liked = false;
        });
      });
    }

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.black.withOpacity(0.5),
        borderRadius: 30,
        selectedBackgroundColor: Colors.white.withOpacity(0.5),
        itemBorderRadius: 20,
        onTap: (int val) {
          setState(() {
            tab = val;
          });
        },
        currentIndex: tab,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(
              icon: Icons.supervised_user_circle_outlined, title: 'Profile'),
        ],
      ),
      backgroundColor: black,
      appBar: tab == 2 || tab == 1
          ? AppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.black,
            )
          : AppBar(
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Notifications(),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Icon(Icons.favorite_outline),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Colors.red, shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Message()));
                    },
                    icon: Icon(Icons.message_rounded))
              ],
              backgroundColor: black,
              title: Text(
                "instagram",
              ),
              centerTitle: false,
            ),
      body: tab == 2
          ? Profile()
          : tab == 1
              ? Explore()
              : ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        //STORIEs
                        Container(
                          padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                          height: 90,
                          color: black,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, i) {
                              return Hero(
                                tag: "$i",
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Story(
                                                  tag: "$i",
                                                )));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(3),
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('assets/${i+1}.jpg')),
                                      border: Border.all(
                                          width: 2, color: Colors.orangeAccent),
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        //POSTS
                        for (var i = 0; i < posts.length; i++)
                          Container(
                            height: 530,
                            width: double.infinity,
                            color: black,
                            // ignore_for_file: prefer_const_literals_to_create_immutables
                            child: Column(
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.all(4),
                                  trailing: Icon(
                                    Icons.more_vert_outlined,
                                    color: Colors.grey,
                                  ),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/${i+1}.jpg'),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    posts[i].user.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  subtitle: Text(
                                    "from Sri Lanka",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                GestureDetector(
                                  onDoubleTap: () {
                                    setState(() {
                                      liked = true;
                                    });

                                    s0.play(motion: Motion.play);
                                  },
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        height: 300,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/${i+2}.jpg'),
                                          ),
                                        ),
                                      ),
                                      //like Button
                                      Opacity(
                                        opacity: liked ? 1 : 0,
                                        child: Spring.bubbleButton(
                                            springController: s0,
                                            child: Icon(
                                              Icons.favorite,
                                              size: 90,
                                              color: Colors.redAccent,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.favorite_outline,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.comment_rounded,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.send_rounded,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Divider(),
                                //bio
                                Container(
                                  height: 20,
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  width: double.infinity,
                                  child: Text(
                                    "Best Things will Happens soon... ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        suffixIcon: Text(
                                          "🤣 😍 😇",
                                          style: TextStyle(fontSize: 30),
                                        ),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(width: 0)),
                                        disabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 0)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 0)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 0)),
                                        hintText: "Add your Comment here..."),
                                  ),
                                )
                              ],
                            ),
                          ),
                      ],
                    );
                  }),
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
];

List<String> avatarImage = [
  'https://i.pinimg.com/originals/9f/fd/57/9ffd57a41f8fa5dc3d29098db6cc63bd.jpg',
  'https://cdn.dribbble.com/users/1300386/screenshots/15771551/indian_man.png?compress=1&resize=400x300',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVKz5Nt4wg_CyG8FpDx4b5odpBqkJgBzvGS9KJ6tIUFX45gvfc88ztVOcZ6B2iV-ChJ5I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVKz5Nt4wg_CyG8FpDx4b5odpBqkJgBzvGS9KJ6tIUFX45gvfc88ztVOcZ6B2iV-ChJ5I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVKz5Nt4wg_CyG8FpDx4b5odpBqkJgBzvGS9KJ6tIUFX45gvfc88ztVOcZ6B2iV-ChJ5I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVKz5Nt4wg_CyG8FpDx4b5odpBqkJgBzvGS9KJ6tIUFX45gvfc88ztVOcZ6B2iV-ChJ5I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVKz5Nt4wg_CyG8FpDx4b5odpBqkJgBzvGS9KJ6tIUFX45gvfc88ztVOcZ6B2iV-ChJ5I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVKz5Nt4wg_CyG8FpDx4b5odpBqkJgBzvGS9KJ6tIUFX45gvfc88ztVOcZ6B2iV-ChJ5I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVKz5Nt4wg_CyG8FpDx4b5odpBqkJgBzvGS9KJ6tIUFX45gvfc88ztVOcZ6B2iV-ChJ5I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVKz5Nt4wg_CyG8FpDx4b5odpBqkJgBzvGS9KJ6tIUFX45gvfc88ztVOcZ6B2iV-ChJ5I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVKz5Nt4wg_CyG8FpDx4b5odpBqkJgBzvGS9KJ6tIUFX45gvfc88ztVOcZ6B2iV-ChJ5I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKMMYm_3VRNuT0yT1eT9HAuNwaHkXG8DK7rk4dKVzO1wKuvceXdVUkqyKoM2VLsvoIL0I&usqp=CAU',
];

class PostItems {
  String? user;
  String? description;
  String? comment;
  String? location;

  PostItems({this.user, this.description, this.comment, this.location});
}

List<PostItems> posts = [
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

class Story extends StatefulWidget {
  String? tag;
  Story({this.tag});

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Text("lazy_unicxrn", style: TextStyle(fontWeight: FontWeight.w400)),
      ),
      body: Hero(
        tag: widget.tag.toString(),
        child: Center(
          child: Image(
            image: NetworkImage(
                'https://media.istockphoto.com/photos/young-man-shopping-online-picture-id1305615921?b=1&k=20&m=1305615921&s=170667a&w=0&h=nQ1qcUP8MBo5OkghDXZb_nDKgJmxjK7VkAJ4yb0n4-M='),
          ),
        ),
      ),
    );
  }
}
