
import 'package:flutter/material.dart';
import 'package:my_bookly_main/core/utils/asset_data.dart';
import 'package:my_bookly_main/core/utils/image_style.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          ImageStyle(imageSrc: Image.network(AssetData.testImage).image,),
    
          Column(
            children: [
              Text('The Jungle Book'),
              Text('Redyard Kipling'),
              Row(
                children: [
                  Text(r'19.99 $'),
                  Text('4.8 (2390)'),
                ],
              )
            ],
          ),
    
          
        ],
      ),
    );
  }
}
