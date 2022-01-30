import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class DefterreGimmi extends StatelessWidget {
  const DefterreGimmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              context.router.pushNamed(
                "/cantique-view/10",
              );
            },
            child: const ListTile(
              title: Text("Baaba Ceenido"),
              subtitle: Text("hl-389"),
              leading: Text("10"),
            ),
          )
        ],
      ),
    ));
  }
}
