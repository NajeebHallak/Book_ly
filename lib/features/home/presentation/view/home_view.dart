import 'package:book_ly/features/home/presentation/view/widgets/book_home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BodyHomeBody(),
      ),
    );
  }
}
