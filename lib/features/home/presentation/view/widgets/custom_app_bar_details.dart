import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarDetails extends StatelessWidget {
  const CustomAppBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
        ],
      ),
    );
  }
}
