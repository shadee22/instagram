// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_new)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.group))],
          title: Text("Bill_Bobber"),
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(0.9),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // end: Alignment.bottomRight ,
              // begin: Alignment.topLeft,
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [Colors.black, Colors.black, Colors.blueGrey],
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: device.height,
                width: double.infinity,
                // color: Colors.black,
                child: ListView.builder(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 100),
                  reverse: true,
                  itemCount: message.length,
                  itemBuilder: (context, i) {
                    // ignore_for_file: prefer_const_constructors
                    return Align(
                      alignment: i.isOdd
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Container(
                        decoration: BoxDecoration(
                            color: message[i].me == false
                                ? Colors.grey.withOpacity(0.5)
                                : Colors.purpleAccent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  message[i].me == true ? 20 : 5),
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(
                                  message[i].me == true ? 5 : 20),
                              bottomRight: Radius.circular(20),
                            )),
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(12),
                        child: Text(
                          message[i].message.toString(),
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                  width: 370,
                  bottom: 30,
                  left: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        fillColor: Colors.black,
                        filled: true,
                        suffixIcon: Icon(
                          Icons.send_outlined,
                          color: Colors.yellow,
                        ),
                        focusColor: Colors.red,
                        hoverColor: Colors.purpleAccent,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        hintText: "Type Your message here !",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class MessageTile {
  bool? me;
  String? message;

  MessageTile({this.me, this.message});
}

List<MessageTile> message = [
  MessageTile(me: true, message: "lets made some Code"),
  MessageTile(me: false, message: "Hi hello"),
  MessageTile(me: true, message: "lets follow flutter boy"),
  MessageTile(me: false, message: "Yeah ! Me too"),
  MessageTile(me: true, message: "he is Awesome "),
  MessageTile(me: false, message: "i agree With That"),
  MessageTile(me: true, message: "What is The Reasone"),
  MessageTile(me: false, message: "My Hand is waliching   "),
  MessageTile(me: true, message: "lets made some Code"),
  MessageTile(me: false, message: "Hi hello"),
  MessageTile(me: true, message: "lets follow flutter boy"),
  MessageTile(me: false, message: "Yeah ! Me too"),
  MessageTile(me: true, message: "he is Awesome "),
  MessageTile(me: false, message: "i agree With That"),
  MessageTile(me: true, message: "What is The Reasone"),
  MessageTile(me: false, message: "My Hand is waliching   "),
];
