import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly_main/core/utils/app_router.dart';
import 'package:my_bookly_main/core/utils/asset_data.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(AssetData.logo, height: 36),

          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
