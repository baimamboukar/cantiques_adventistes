import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class CantiqueView extends StatelessWidget {
  final int number;
  const CantiqueView({Key? key, @PathParam("number") required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
