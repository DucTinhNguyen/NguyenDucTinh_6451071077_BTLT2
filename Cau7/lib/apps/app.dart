import 'package:flutter/material.dart';
import '../views/gallery_screen.dart';
import '../utils/app_theme.dart';

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery Ảnh',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: Column(
        children: const [
          Expanded(
            child: GalleryScreen(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'NguyenDucTinh - 6451071077',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}