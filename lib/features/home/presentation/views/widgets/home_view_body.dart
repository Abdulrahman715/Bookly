import 'package:flutter/material.dart';
import 'package:my_bookly_main/core/utils/styles.dart';
import 'package:my_bookly_main/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:my_bookly_main/features/home/presentation/views/widgets/custom_best_seller_item.dart';
import 'package:my_bookly_main/features/home/presentation/views/widgets/custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHomeAppBar(),
                SizedBox(height: 10),
                BooksListView(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Best Seller', style: Styles.textStyle18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 4.0,
              ),

              child: CustomBestSellerItem(),
            );
          }, childCount: 10),
        ),
      ],
    );
  }
}


//! traditional way to build the home view body without using slivers
// Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 8),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CustomHomeAppBar(),
//             SizedBox(height: 10),
//             BooksListView(),
//             SizedBox(height: 10),
//             Text(
//               'Best Seller',
//               style: Styles.textStyle18,
//             ),
//             SizedBox(height: 20),
//             CustomBestSellerListView(),
//           ],
//         ),
//       ),
//     );
