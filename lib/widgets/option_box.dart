import 'package:cantiques_adventistes/utils/utils.dart';
import 'package:flutter/material.dart';

class OptionBox extends StatelessWidget {
  const OptionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Palette.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Palette.light,
          borderRadius:
              const BorderRadius.only(topLeft: Radius.elliptical(100, 70)),
        ),
        child: Stack(),
      ),
    );
  }
}
