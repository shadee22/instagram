// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:insta/en.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

//CREDITS FUN WITH FLUTTER
// https://www.youtube.com/watch?v=h0H2t7fOGU4

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Explore"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now());
              },
              icon: Icon(Icons.search_outlined))
        ],
      ),
      body: StaggeredGridView.countBuilder(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        crossAxisCount: 3,
        itemCount: imageList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Clicks()));
          },
          child: ImageCard(
            imageData: imageList[index],
          ),
        ),
        staggeredTileBuilder: (index) => StaggeredTile.count(
            (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final ImageData? imageData;
  ImageCard({this.imageData});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset("assets/${imageData!.id!}.jpg", fit: BoxFit.cover),
    );
  }
}

class ImageData {
  final String? id;
  final String? imageUrl;

  const ImageData({
    @required this.id,
    @required this.imageUrl,
  });
}

const imageList = [
  ImageData(
    id: '1',
    imageUrl: 'https://picsum.photos/seed/image001/500/500',
  ),
  ImageData(
    id: '2',
    imageUrl: 'https://picsum.photos/seed/image002/500/800',
  ),
  ImageData(
    id: '3',
    imageUrl: 'https://picsum.photos/seed/image003/500/300',
  ),
  ImageData(
    id: '4',
    imageUrl: 'https://picsum.photos/seed/image004/500/900',
  ),
  ImageData(
    id: '5',
    imageUrl: 'https://picsum.photos/seed/image005/500/600',
  ),
  ImageData(
    id: '6',
    imageUrl: 'https://picsum.photos/seed/image006/500/500',
  ),
  ImageData(
    id: '7',
    imageUrl: 'https://picsum.photos/seed/image007/500/400',
  ),
  ImageData(
    id: '8',
    imageUrl: 'https://picsum.photos/seed/image008/500/700',
  ),
  ImageData(
    id: '9',
    imageUrl: 'https://picsum.photos/seed/image009/500/600',
  ),
  ImageData(
    id: '0',
    imageUrl: 'https://picsum.photos/seed/image010/500/900',
  ),
  ImageData(
    id: '1',
    imageUrl: 'https://picsum.photos/seed/image011/500/900',
  ),
  ImageData(
    id: '2',
    imageUrl: 'https://picsum.photos/seed/image012/500/700',
  ),
  ImageData(
    id: '3',
    imageUrl: 'https://picsum.photos/seed/image013/500/700',
  ),
  ImageData(
    id: '4',
    imageUrl: 'https://picsum.photos/seed/image014/500/800',
  ),
  ImageData(
    id: '5',
    imageUrl: 'https://picsum.photos/seed/image015/500/500',
  ),
  ImageData(
    id: '6',
    imageUrl: 'https://picsum.photos/seed/image016/500/700',
  ),
  ImageData(
    id: '7',
    imageUrl: 'https://picsum.photos/seed/image017/500/600',
  ),
  ImageData(
    id: '8',
    imageUrl: 'https://picsum.photos/seed/image018/500/900',
  ),
  ImageData(
    id: '9',
    imageUrl: 'https://picsum.photos/seed/image019/500/800',
  ),
   ImageData(
    id: '1',
    imageUrl: 'https://picsum.photos/seed/image001/500/500',
  ),
  ImageData(
    id: '2',
    imageUrl: 'https://picsum.photos/seed/image002/500/800',
  ),
  ImageData(
    id: '3',
    imageUrl: 'https://picsum.photos/seed/image003/500/300',
  ),
  ImageData(
    id: '4',
    imageUrl: 'https://picsum.photos/seed/image004/500/900',
  ),
  ImageData(
    id: '5',
    imageUrl: 'https://picsum.photos/seed/image005/500/600',
  ),
  ImageData(
    id: '6',
    imageUrl: 'https://picsum.photos/seed/image006/500/500',
  ),
  ImageData(
    id: '7',
    imageUrl: 'https://picsum.photos/seed/image007/500/400',
  ),
  ImageData(
    id: '8',
    imageUrl: 'https://picsum.photos/seed/image008/500/700',
  ),
  ImageData(
    id: '9',
    imageUrl: 'https://picsum.photos/seed/image009/500/600',
  ),
  ImageData(
    id: '0',
    imageUrl: 'https://picsum.photos/seed/image010/500/900',
  ),
  ImageData(
    id: '1',
    imageUrl: 'https://picsum.photos/seed/image011/500/900',
  ),
  ImageData(
    id: '2',
    imageUrl: 'https://picsum.photos/seed/image012/500/700',
  ),
  ImageData(
    id: '3',
    imageUrl: 'https://picsum.photos/seed/image013/500/700',
  ),
  ImageData(
    id: '4',
    imageUrl: 'https://picsum.photos/seed/image014/500/800',
  ),
  ImageData(
    id: '5',
    imageUrl: 'https://picsum.photos/seed/image015/500/500',
  ),
  ImageData(
    id: '6',
    imageUrl: 'https://picsum.photos/seed/image016/500/700',
  ),
  ImageData(
    id: '7',
    imageUrl: 'https://picsum.photos/seed/image017/500/600',
  ),
  ImageData(
    id: '8',
    imageUrl: 'https://picsum.photos/seed/image018/500/900',
  ),
  ImageData(
    id: '9',
    imageUrl: 'https://picsum.photos/seed/image019/500/800',
  ),
];
