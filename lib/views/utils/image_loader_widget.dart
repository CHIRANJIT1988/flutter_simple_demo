import 'package:flutter/material.dart';

import '../../utils/page_type.dart';

Image loadThumbnail(String pageType, String url) {
  bool networkImage = pageType == PageType.iceCream.name || pageType == PageType.pizzaAndBurger.name;
  return networkImage ? Image.network(url) : Image.asset(url);
}

CircleAvatar loadImage(String pageType, String url) {
  bool networkImage = pageType == PageType.iceCream.name || pageType == PageType.pizzaAndBurger.name;
  return CircleAvatar(
      radius: 25,
      backgroundImage: networkImage ? NetworkImage(url) : AssetImage(url)
  );
}