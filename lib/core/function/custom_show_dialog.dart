import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customShowDialog(context, String massages) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('ERROR'),
      content: Text(massages),
      actions: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Text('OK'),
        )
      ],
    ),
  );
}
