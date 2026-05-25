import 'package:flutter/material.dart';
import 'package:my_bookly_main/core/utils/styles.dart';
import 'package:my_bookly_main/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:my_bookly_main/features/home/presentation/views/widgets/custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHomeAppBar(),
          SizedBox(height: 10),
          BooksListView(),
          SizedBox(height: 10),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ],
      ),
    );
  }
}