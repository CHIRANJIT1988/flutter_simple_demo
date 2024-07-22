import 'package:flutter/material.dart';
import 'package:vm_flutter_demo/views/utils/image_loader_widget.dart';

import '../../model/food_item_model.dart';

class DetailsView extends StatelessWidget {
  FoodItem foodItem;
  String pageType;
  DetailsView(this.foodItem, this.pageType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MyDetailsPage(foodItem: foodItem, pageType: pageType)
    );
  }
}

class MyDetailsPage extends StatefulWidget {
  FoodItem foodItem;
  String pageType;

  MyDetailsPage({super.key, required this.foodItem, required this.pageType});

  @override
  State<MyDetailsPage> createState() => _MyDetailsPageState();
}

class _MyDetailsPageState extends State<MyDetailsPage> {
  int _itemCount = 0;

  void _addToCart() {
    setState(() {
      _itemCount++;
    });
  }

  void _removeFromCart() {
    setState(() {
      if (_itemCount != 0) {
        _itemCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(12),
            child: SafeArea(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: loadThumbnail(widget.pageType, widget.foodItem.thumbnail(widget.pageType))
                      ),
                    ),
                    Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 24, 0, 12),
                          child: Text(
                              widget.foodItem.formattedAmount,
                              style: const TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                              )
                          ),
                        )
                    ),
                    Center(
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                              widget.foodItem.name(widget.pageType),
                              style: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                        )
                    ),
                    Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 0, 14),
                          child: Text(
                              widget.foodItem.title,
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              )
                          ),
                        )
                    ),
                    cartWidget()
                  ],
                )
            )
        )
    );
  }

  Widget cartWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          onPressed: _removeFromCart,
          tooltip: 'Remove',
          backgroundColor: Colors.red,
          child: const Icon(Icons.remove),
        ),
        Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
                '$_itemCount',
                style: const TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                )
            )
        ),
        FloatingActionButton(
          onPressed: _addToCart,
          tooltip: 'Add',
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}