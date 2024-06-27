import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vm_flutter_demo/views/listview/UserGridViewItem.dart';
import 'package:vm_flutter_demo/viewmodel/UserViewModel.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<UserViewModel>(context);
    return Scaffold(
        body: FutureBuilder(
          future: viewModel.fetchData(),
          builder: (context, snapshot) {
            // Check if data is still loading
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Show a progress indicator while loading
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            // Check if an error occurred while loading data
            else if (snapshot.hasError) {
              // Display an error message
              return const Center(
                child: Text('Error loading data'),
              );
            }
            // If data has been loaded successfully
            return UserGridViewItem(userList: viewModel.userList);
          },
        )
    );
  }
}