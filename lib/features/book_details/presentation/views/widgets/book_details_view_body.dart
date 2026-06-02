import 'package:flutter/material.dart';
import 'package:my_bookly_main/core/utils/styles.dart';
import 'package:my_bookly_main/features/book_details/presentation/views/widgets/book_details_app_bar.dart';
import 'package:my_bookly_main/features/book_details/presentation/views/widgets/button_action.dart';
import 'package:my_bookly_main/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:my_bookly_main/features/home/presentation/views/widgets/rating_row.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var widthOfImage = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Column(
          children: [
            BookDetailsAppBar(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: widthOfImage * 0.2),
              child: CustomListViewItem(),
            ),
            SizedBox(height: 20),
            Text(
              'Harry Botter and the goblet of fire',
              style: Styles.textStyle25,
            ),
            SizedBox(height: 6),
            Text(
              'J.K. Rowling',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
            SizedBox(height: 15),
            RatingRow(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 30),
            ButtonAction(),
          ],
        ),
      ),
    );
  }
}