import 'package:flutter/material.dart';
import '../models/photo_model.dart';
import '../utils/photo_data.dart';
import '../widgets/photo_card.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PhotoModel> photos = PhotoData.getSamplePhotos();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery Ảnh'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: photos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,     // 2 cột
            crossAxisSpacing: 10,  // khoảng cách ngang
            mainAxisSpacing: 10,   // khoảng cách dọc
            childAspectRatio: 1.0, // ô vuông
          ),
          itemBuilder: (context, index) {
            return PhotoCard(photo: photos[index]);
          },
        ),
      ),
    );
  }
}
