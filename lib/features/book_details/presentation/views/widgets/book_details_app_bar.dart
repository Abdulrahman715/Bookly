import 'package:flutter/material.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded , size: 30,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_rounded , size: 30,)),
      ],
    );
  }
}
