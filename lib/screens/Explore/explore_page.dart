import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:terra_apps/widgets/SearchBox.dart';
import 'package:terra_apps/widgets/ctag.dart';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:terra_apps/screens/Posts/postView_model.dart';

final _store = FirebaseFirestore.instance;

class Explore extends StatelessWidget {

  List<Color> _colors = [
    Color.fromARGB(255, 2, 2, 2),
    Colors.pink,
    Colors.blue,
    Colors.purple,
    Colors.deepPurple,
    Colors.teal,
    Colors.indigo,
    Colors.cyan,
  ];
  cgen(List<Color> nlis) {
    return nlis.elementAt(Random().nextInt(nlis.length));
  }

  Widget picPost(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Image.network(
        url,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          ),
        ),

        PostsStream(),
      ],
    );
  }
}

class ImageBox extends StatelessWidget {
  final imageUrl;
  ImageBox({@required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => POstView(imageUrl)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.red.shade100,
          image: DecorationImage(
              image: CachedNetworkImageProvider(imageUrl), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class PostsStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _store.collection('posts').snapshots(),
      builder: (context, snapshot) {
        List<ImageBox> imageBoxes = [];
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlue,
            ),
          );
        }
        final images = snapshot.data.docs;

        for (var image in images) {
          final url = image['url'];
          final gridItem = ImageBox(
            imageUrl: url,
          );
          imageBoxes.add(gridItem);
        }
        return Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            padding: EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: imageBoxes,
          ),
        );
      },
    );
  }
}