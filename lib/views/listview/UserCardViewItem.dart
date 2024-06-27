import 'package:flutter/material.dart';
import 'package:vm_flutter_demo/views/screens/DetailsView.dart';

import '../../model/User.dart';

class UserCardViewItem extends StatelessWidget {
  List<User> userList = [];

  UserCardViewItem({required this.userList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userList.length,
      itemBuilder: (context, index) {
        User user = userList[index];
        return ListCardView(user: user);
      },
    );
  }
}

class ListCardView extends StatelessWidget {
  User user;
  ListCardView({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0, // Controls the shadow depth
      margin: const EdgeInsets.all(8), // Adjust margin as needed
      child: ListTile(
        leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(user.completed ? 'https://ygo-assets-entities-emea.yougov.net/5a1fb162-2d0d-11e6-a4bd-71dbf5f2854a.jpg' : 'https://e1.pxfuel.com/desktop-wallpaper/893/880/desktop-wallpaper-light-beer-logo-crown-33android-cf-corona-logo.jpg')
        ),
        title: const Text(
            'Card Title',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
            )
        ),
        subtitle: Text(user.title),
        trailing: const Icon(Icons.more_vert), // Optionally add a trailing icon
        onTap: () {
          print('Item clicked: ${user.id}');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsView(user)),
          );
        },
      ),
    );
  }
}