import 'package:flutter/material.dart';
import 'package:my_bookly_main/core/utils/asset_data.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: Image.network(AssetData.testImage).image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}