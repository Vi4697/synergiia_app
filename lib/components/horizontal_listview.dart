//import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/icons/p1.png',
            image_caption: 'Candles',
          ),
          Category(
            image_location: 'images/icons/arom3.png',
            image_caption: 'Aromas',
          ),
          Category(
            image_location: 'images/icons/aroma5.png',
            image_caption: 'Oils',
          ),
          Category(
            image_location: 'images/icons/set1.png',
            image_caption: 'Kit',
          ),
          Category(
            image_location: 'images/icons/pr1.png',
            image_caption: 'Package',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      //inkwell for action of tap
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 60.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption,
                style: new TextStyle(fontSize: 15.0),
              ),
            )
          ),
        ),
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('image_location', image_location));
  }
}
