import 'package:flutter/material.dart';
import '../views/profile_view.dart';
import '../utils/constants.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile App",
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: ProfileView(),
    );
  }
}