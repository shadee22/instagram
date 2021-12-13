// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:insta/chat.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  // ignore_for_file: prefer_const_literals_to_create_immutables
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(images[1]),
                        radius: 50,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "lazy_unicxrn",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Divider(
                      color: Colors.white,
                    ),
                    for (var tile in tiles)
                      ListTile(
                        leading: Icon(
                          tile.icon,
                          color: Colors.white,
                        ),
                        title: Text(
                          tile.name.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                  ],
                )),
            Divider(color: Colors.white),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Developed by Shadeer',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Colors.black,
        title: Text("Messages"),
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.yellow,
              ))
        ],
      ),
      body: ListView.builder(
          itemCount: names.length - 1,
          itemBuilder: (context, i) {
            return Column(
              children: [
                i == 0
                    ? Container(
                        margin: EdgeInsets.all(10),
                        child: TextFormField(
                          style: TextStyle(color: Colors.blueGrey),
                          decoration: InputDecoration(
                            label: Text("Search Here !"),
                            prefixIcon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.blueGrey,
                            ),
                            labelStyle: TextStyle(color: Colors.blueGrey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      )
                    : Container(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Chat()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      subtitle: Text("I dont know ${names[i + 1]} ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      title: Text(
                        names[i],
                        style: TextStyle(color: Colors.white, letterSpacing: 1),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(images[i]),
                        radius: 25,
                      ),
                      trailing: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class Tile {
  IconData? icon;
  String? name;
  Tile({this.icon, this.name});
}

List<Tile> tiles = [
  Tile(icon: Icons.favorite_outline, name: "Favourite Contacts"),
  Tile(icon: Icons.perm_media, name: "Selected Media"),
  Tile(icon: Icons.settings_outlined, name: "General Setting "),
  Tile(icon: Icons.color_lens, name: "Theme and Appearence"),
  Tile(icon: Icons.security_outlined, name: "Security and Privacy"),
];

List<String> images = [
  'https://images.unsplash.com/photo-1494088644719-c75cad020cff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'https://media.istockphoto.com/photos/put-more-in-get-more-out-picture-id1291318636?b=1&k=20&m=1291318636&s=170667a&w=0&h=UvVIk7wwkN3X9OFm8gBlWWviV5vAjfrq2ejYP30JmnA=',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37d8G1q6K7kET1XOLMwKU0H3hvPhED3HSrg&usqp=CAU',
  'https://images.unsplash.com/photo-1553531384-2a97de235d45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b3V0ZG9vcnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1494088644719-c75cad020cff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'https://media.istockphoto.com/photos/put-more-in-get-more-out-picture-id1291318636?b=1&k=20&m=1291318636&s=170667a&w=0&h=UvVIk7wwkN3X9OFm8gBlWWviV5vAjfrq2ejYP30JmnA=',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37d8G1q6K7kET1XOLMwKU0H3hvPhED3HSrg&usqp=CAU',
  'https://images.unsplash.com/photo-1553531384-2a97de235d45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b3V0ZG9vcnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1494088644719-c75cad020cff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'https://media.istockphoto.com/photos/put-more-in-get-more-out-picture-id1291318636?b=1&k=20&m=1291318636&s=170667a&w=0&h=UvVIk7wwkN3X9OFm8gBlWWviV5vAjfrq2ejYP30JmnA=',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37d8G1q6K7kET1XOLMwKU0H3hvPhED3HSrg&usqp=CAU',
  'https://images.unsplash.com/photo-1553531384-2a97de235d45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b3V0ZG9vcnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1494088644719-c75cad020cff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'https://media.istockphoto.com/photos/put-more-in-get-more-out-picture-id1291318636?b=1&k=20&m=1291318636&s=170667a&w=0&h=UvVIk7wwkN3X9OFm8gBlWWviV5vAjfrq2ejYP30JmnA=',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37d8G1q6K7kET1XOLMwKU0H3hvPhED3HSrg&usqp=CAU',
  'https://images.unsplash.com/photo-1553531384-2a97de235d45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b3V0ZG9vcnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1494088644719-c75cad020cff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'https://media.istockphoto.com/photos/put-more-in-get-more-out-picture-id1291318636?b=1&k=20&m=1291318636&s=170667a&w=0&h=UvVIk7wwkN3X9OFm8gBlWWviV5vAjfrq2ejYP30JmnA=',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37d8G1q6K7kET1XOLMwKU0H3hvPhED3HSrg&usqp=CAU',
  'https://images.unsplash.com/photo-1553531384-2a97de235d45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b3V0ZG9vcnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37d8G1q6K7kET1XOLMwKU0H3hvPhED3HSrg&usqp=CAU',
  'https://images.unsplash.com/photo-1553531384-2a97de235d45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b3V0ZG9vcnxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1494088644719-c75cad020cff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'https://media.istockphoto.com/photos/put-more-in-get-more-out-picture-id1291318636?b=1&k=20&m=1291318636&s=170667a&w=0&h=UvVIk7wwkN3X9OFm8gBlWWviV5vAjfrq2ejYP30JmnA=',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37d8G1q6K7kET1XOLMwKU0H3hvPhED3HSrg&usqp=CAU',
  'https://images.unsplash.com/photo-1553531384-2a97de235d45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b3V0ZG9vcnxlbnwwfHwwfHw%3D&w=1000&q=80',
];

List<String> names = [
  'lazy_unicxrn',
  'bon_aroma',
  'jam_man',
  'helloDumber',
  'tring_Jawpaer',
  'cow_worker',
  'Keower',
  'bon_aroma',
  'jam_man',
  'helloDumber',
  'tring_Jawpaer',
  'cow_worker',
  'Keower',
  'bon_aroma',
  'jam_man',
  'cow_worker',
  'Keower',
  'bon_aroma',
  'jam_man',
];
