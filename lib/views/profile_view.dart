import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/profile_widget.dart';
import '../utils/constants.dart';

class ProfileView extends StatelessWidget {

  final User user = User(
    name: "Nguyen Lan Huong",
    email: "lanhuong.nguyen@example.com",
    avatar: "https://i.pravatar.cc/300",
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.account_circle),
          )
        ],
      ),

      body: Center(
        child: ProfileWidget(user: user),
      ),

    );
  }
}