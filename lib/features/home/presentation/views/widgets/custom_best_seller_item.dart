import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly_main/constants.dart';
import 'package:my_bookly_main/core/utils/app_router.dart';
import 'package:my_bookly_main/core/utils/asset_data.dart';
import 'package:my_bookly_main/core/utils/image_style.dart';
import 'package:my_bookly_main/core/utils/styles.dart';
import 'package:my_bookly_main/features/home/presentation/views/widgets/rating_row.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 135,
        child: Row(
          children: [
            ImageStyle(imageSrc: Image.network(AssetData.testImage).image),

            SizedBox(width: 30),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Botter and the goblet of fire ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtsectraFine,
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text('J.K. Rowling', style: Styles.textStyle14),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'19.99 $',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RatingRow(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
