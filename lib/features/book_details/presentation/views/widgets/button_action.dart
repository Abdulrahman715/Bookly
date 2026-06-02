import 'package:flutter/material.dart';
import 'package:my_bookly_main/core/widgets/custom_button.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: r'19.99$',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: CustomButton(
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              text: r'Free Preview',
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
