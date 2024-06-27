import 'package:flutter/material.dart';

import '../../model/User.dart';

class DetailsView extends StatelessWidget {
  User user;
  DetailsView(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Text(user.title),
      ),
    );
  }
}