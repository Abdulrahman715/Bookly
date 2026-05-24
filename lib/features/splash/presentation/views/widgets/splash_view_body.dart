import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bookly_main/core/utils/asset_data/asset_data.dart';
import 'package:my_bookly_main/features/home/presentation/views/home_view.dart';
import 'package:my_bookly_main/features/splash/presentation/views/widgets/sliding_animation_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    intiSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(AssetData.logo),
        //!...................................
        SizedBox(height: 20),
        //!...................................
        SlidingAnimationText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  //todo control to sliding animation for text "Read free books"

  void intiSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();

    // animationController.addListener((){
    //   setState(() {
    //   });
    // });
  }

  //! Navigate to home page with duration and simple transition Animation
  void navigateToHome() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(
        HomeView(),
        transition: Transition.downToUp,
        duration: Duration(milliseconds: 250),
      );
    });
  }
}
