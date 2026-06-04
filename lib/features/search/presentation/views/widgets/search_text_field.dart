import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // filled: true,
        // fillColor: Colors.white,
        labelText: 'Search...',
        hintText: 'Search for books, authors, genres...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            fontWeight: FontWeight.bold,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.xmark,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
