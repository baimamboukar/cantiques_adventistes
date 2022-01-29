import 'package:cantiques_adventistes/utils/utils.dart';
import 'package:flutter/material.dart';

class OptionBox extends StatelessWidget {
  const OptionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Palette.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Palette.light,
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.elliptical(150, 100)),
        ),
        child: Stack(),
      ),
    );
  }
}
