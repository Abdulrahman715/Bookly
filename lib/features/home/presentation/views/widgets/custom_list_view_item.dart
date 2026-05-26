import 'package:flutter/material.dart';
import 'package:my_bookly_main/core/utils/asset_data.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: Image.network(AssetData.testImage).image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}