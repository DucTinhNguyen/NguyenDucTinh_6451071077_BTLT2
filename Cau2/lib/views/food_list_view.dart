import 'package:flutter/material.dart';
import '../utils/food_data.dart';
import '../widgets/food_item_widget.dart';

class FoodListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,

        title: Column(
          children: [

            Text(
              "DANH SÁCH MÓN ĂN",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            Text(
              "NguyenDucTinh - 6451071077",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),

          ],
        ),
      ),

      body: ListView.builder(

        itemCount: foodList.length,

        itemBuilder: (context, index) {

          return FoodItemWidget(
            food: foodList[index],
          );

        },
      ),

    );
  }
}