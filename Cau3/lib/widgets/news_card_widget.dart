import 'package:flutter/material.dart';
import '../models/news.dart';

class NewsCardWidget extends StatelessWidget {

  final News news;

  NewsCardWidget({required this.news});

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            child: Image.network(
              news.image,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(12),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  news.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 6),

                Text(
                  news.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}