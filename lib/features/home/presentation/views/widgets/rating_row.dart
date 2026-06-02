import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly_main/core/utils/styles.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        FaIcon(FontAwesomeIcons.solidStar, color: Colors.amber),
        const SizedBox(width: 10),
        Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 10),
        Text('(20.5k)', style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
