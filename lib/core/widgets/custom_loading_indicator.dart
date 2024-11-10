import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: const LoadingIndicator(
        indicatorType: Indicator.ballRotateChase,
        colors: [
          Colors.blue,
          Colors.green,
          Colors.amber,
          Colors.red,
        ],
      ),
    );
  }
}
