import 'package:flutter/material.dart';

class CustomListText extends StatelessWidget {
  const CustomListText({
    super.key,
    required this.slidingAnimationBottum,
  });

  final Animation<Offset> slidingAnimationBottum;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimationBottum,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimationBottum,
            child: const Text(
              'Read Free Box',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
