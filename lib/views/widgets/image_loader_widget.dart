import 'package:flutter/material.dart';

import '../../utils/page_type.dart';

bool isNetworkImage(String pageType) {
  return pageType == PageType.iceCream.name || pageType == PageType.pizzaAndBurger.name;
}

class CircularImage extends StatelessWidget {
  String url;
  bool isNetworkImage;

  CircularImage({super.key, required this.url, required this.isNetworkImage});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 25,
        backgroundImage: isNetworkImage ? NetworkImage(url) : AssetImage(url)
    );
  }
}

class SquareImage extends StatelessWidget {
  String url;
  bool isNetworkImage;

  SquareImage({super.key, required this.url, required this.isNetworkImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: isNetworkImage ? Image.network(url) : Image.asset(url)
    );
  }
}