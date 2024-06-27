import 'package:flutter/material.dart';
import 'package:vm_flutter_demo/views/screens/DetailsView.dart';

import '../../model/User.dart';

class UserGridViewItem extends StatelessWidget {
  List<User> userList = [];

  UserGridViewItem({required this.userList, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        padding: const EdgeInsets.all(10.0), // Padding around the GridView
        itemCount: userList.length, // Total number of items
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                print('Item $index tapped');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsView(userList[index])),
                );
              },
              child: GridCardView(user: userList[index])
          );
        });
  }
}

class GridCardView extends StatelessWidget {
  User user;
  GridCardView({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(user.completed ? 'https://ygo-assets-entities-emea.yougov.net/5a1fb162-2d0d-11e6-a4bd-71dbf5f2854a.jpg' : 'https://e1.pxfuel.com/desktop-wallpaper/893/880/desktop-wallpaper-light-beer-logo-crown-33android-cf-corona-logo.jpg')
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Card Title',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}