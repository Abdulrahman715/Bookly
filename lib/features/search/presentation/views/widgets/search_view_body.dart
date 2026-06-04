import 'package:flutter/material.dart';
import 'package:my_bookly_main/core/utils/styles.dart';
import 'package:my_bookly_main/features/home/presentation/views/widgets/custom_best_seller_item.dart';
import 'package:my_bookly_main/features/search/presentation/views/widgets/search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                SearchTextField(),
                SizedBox(height: 20),
                Text('Search Result', style: Styles.textStyle18),
                SizedBox(height: 20),
              ],
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                child: CustomBestSellerItem(),
              );
            }, childCount: 10),
          ),
        ],
      ),
    );
  }
}
