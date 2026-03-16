import 'package:flutter/material.dart';
import '../models/user.dart';
import '../utils/constants.dart';

class ProfileWidget extends StatelessWidget {

  final User user;

  ProfileWidget({required this.user});

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage(user.avatar),
        ),

        SizedBox(height: 25),

        Text(
          user.name,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 6),

        Text(
          user.email,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.textGrey,
          ),
        ),

        SizedBox(height: 6),

        // dòng MSSV
        Text(
          "NguyenDucTinh-6451071077",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),

        SizedBox(height: 25),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.button,
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 14,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            "Edit Profile",
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}