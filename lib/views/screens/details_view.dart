import 'package:flutter/material.dart';
import 'package:vm_flutter_demo/views/widgets/image_loader_widget.dart';

import '../../model/food_item_model.dart';
import '../widgets/cart_stepper_widget.dart';

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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(12),
            child: SafeArea(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SquareImage(url: widget.foodItem.thumbnail(widget.pageType), isNetworkImage: isNetworkImage(widget.pageType)),
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
                    CartWidget(
                      removeFromCart: () {
                        setState(() {
                          if (_itemCount != 0) {
                            _itemCount--;
                          }
                        });
                      },
                      addToCart: () {
                        setState(() {
                          _itemCount++;
                        });
                      },
                      itemCount: _itemCount,)
                  ],
                )
            )
        )
    );
  }
}