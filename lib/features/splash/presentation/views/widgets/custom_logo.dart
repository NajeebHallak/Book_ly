import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key,
    required this.slidingAnimationtop,
  });

  final Animation<Offset> slidingAnimationtop;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimationtop,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimationtop,
            child: Image.asset(
              AssetsDatA.Logo,
            ),
          );
        });
  }
}
