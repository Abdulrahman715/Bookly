import 'package:flutter/material.dart';
import 'package:my_bookly_main/features/home/presentation/views/widgets/custom_best_seller_item.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
          child: CustomBestSellerItem(),
        );
      },
    );
  }
}