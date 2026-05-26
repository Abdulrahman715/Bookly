import 'package:flutter/material.dart';

class ImageStyle extends StatelessWidget {
  const ImageStyle({super.key, required this.imageSrc});

  final ImageProvider imageSrc;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: imageSrc, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
//Image.network(AssetData.testImage).image