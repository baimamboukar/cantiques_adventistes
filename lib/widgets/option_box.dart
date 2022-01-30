import 'package:auto_route/auto_route.dart';
import 'package:cantiques_adventistes/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OptionBox extends HookConsumerWidget {
  const OptionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final router = ref.watch(routerProvider);
    return GestureDetector(
      onTap: () {
        context.router.pushNamed("/defterre-gimmi");
      },
      child: Card(
        color: Palette.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Palette.light,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.elliptical(150, 100)),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(FontAwesomeIcons.adn, color: Palette.dark)),
              ),
              const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Defterre Gimmi be Fulfulde",
                    ),
                  )),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/advent.jpg",
                  height: 80,
                  width: 80,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
