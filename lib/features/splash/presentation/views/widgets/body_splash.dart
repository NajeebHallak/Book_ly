import 'package:book_ly/constans.dart';
import 'package:book_ly/features/home/presentation/view/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'custom_list_text.dart';
import 'custom_logo.dart';

class BodySplash extends StatefulWidget {
  const BodySplash({super.key});

  @override
  State<BodySplash> createState() => _BodySplashState();
}

class _BodySplashState extends State<BodySplash> with TickerProviderStateMixin {
  late AnimationController animationControllerLogo;
  late Animation<Offset> slidingAnimationtop;
  late AnimationController animationControllerText;
  late Animation<Offset> slidingAnimationBottum;

  @override
  void initState() {
    super.initState();

    creatAnimationTop();
    creatAnimationBottum();

    navigatorToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomLogo(slidingAnimationtop: slidingAnimationtop),
        CustomListText(slidingAnimationBottum: slidingAnimationBottum),
      ],
    );
  }

  void creatAnimationTop() {
    animationControllerLogo =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimationtop =
        Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
            .animate(animationControllerLogo);
    animationControllerLogo.forward();
  }

  void creatAnimationBottum() {
    animationControllerText =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimationBottum =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationControllerText);
    animationControllerText.forward();
  }

  void navigatorToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(
          const HomeView(),
          transition: Transition.fade,
          duration: kPrimaryDuration,
        );
      },
    );
  }
}
