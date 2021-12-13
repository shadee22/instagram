// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          Center(
            child: Text("Clear all"),
          ),
          SizedBox(width: 10,),
        ],
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.notification_add,
            color: Colors.pinkAccent,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.black.withOpacity(0.4),
        title: Text("Notifications"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(images[i]),
                      radius: 20,
                    ),
                    title: Text(
                      followButton[i] == 'follow'
                          ? "${names[i]} Followed You"
                          : "${names[i]} liked Your Post  ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                    trailing: followButton[i] == 'follow' ||
                            followButton[i] == 'unFollow'
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: followButton[i] == 'unFollow'
                                  ? Colors.white.withOpacity(0.1)
                                  : Colors.blueAccent,
                            ),
                            onPressed: () {
                              setState(() {
                                followButton[i] == 'follow'
                                    ? followButton[i] = 'unFollow'
                                    : followButton[i] = 'follow';
                              });
                            },
                            child: Text(
                              followButton[i],
                            ),
                          )
                        : Image(
                            height: 30,
                            width: 100,
                            image: NetworkImage(followButton[i].toString()),
                          ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}

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

List<String> followButton = [
  'follow',
  'https://images.unsplash.com/photo-1494088644719-c75cad020cff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'follow',
  'https://media.istockphoto.com/photos/put-more-in-get-more-out-picture-id1291318636?b=1&k=20&m=1291318636&s=170667a&w=0&h=UvVIk7wwkN3X9OFm8gBlWWviV5vAjfrq2ejYP30JmnA=',
  'follow',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37d8G1q6K7kET1XOLMwKU0H3hvPhED3HSrg&usqp=CAU',
  'follow',
  'follow',
  'https://images.unsplash.com/photo-1494088644719-c75cad020cff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'follow',
  'https://media.istockphoto.com/photos/put-more-in-get-more-out-picture-id1291318636?b=1&k=20&m=1291318636&s=170667a&w=0&h=UvVIk7wwkN3X9OFm8gBlWWviV5vAjfrq2ejYP30JmnA=',
  'follow',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37d8G1q6K7kET1XOLMwKU0H3hvPhED3HSrg&usqp=CAU',
  'follow',
  'follow',
  'https://images.unsplash.com/photo-1494088644719-c75cad020cff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'follow',
  'https://media.istockphoto.com/photos/put-more-in-get-more-out-picture-id1291318636?b=1&k=20&m=1291318636&s=170667a&w=0&h=UvVIk7wwkN3X9OFm8gBlWWviV5vAjfrq2ejYP30JmnA=',
  'follow',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37d8G1q6K7kET1XOLMwKU0H3hvPhED3HSrg&usqp=CAU',
  'follow',
  'follow',
];
