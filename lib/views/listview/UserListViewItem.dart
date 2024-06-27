import 'package:flutter/material.dart';
import 'package:vm_flutter_demo/views/screens/DetailsView.dart';

import '../../model/User.dart';

class UserListViewItem extends StatelessWidget {
  List<User> userList = [];

  UserListViewItem({required this.userList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: userList.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (context, index) {
        User user = userList[index];
        return ListTile(
          leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(user.completed ? 'assets/mcdonalds.png' : 'assets/starbucks.png')
          ),
          title: Text(user.title),
          onTap: () {
            print('Item clicked: ${user.id}');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsView(user)),
            );
          },
        );
      },
    );
  }
}