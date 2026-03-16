import 'package:flutter/material.dart';
import '../utils/news_data.dart';
import '../widgets/news_card_widget.dart';

class NewsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Column(
          children: [

            Text(
              "News",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "NguyenDucTinh - 6451071077",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            )

          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(

        child: Column(
          children: newsList.map((news) {

            return NewsCardWidget(news: news);

          }).toList(),
        ),
      ),
    );
  }
}