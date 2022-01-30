import 'package:cantiques_adventistes/providers/providers.dart';
import 'package:cantiques_adventistes/utils/utils.dart';
import 'package:cantiques_adventistes/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navigationRailIndexProvider.state);
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: 0,
            leading:
                IconButton(onPressed: () {}, icon: const Icon(Icons.dashboard)),
            trailing: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                "assets/images/advent.jpg",
              ),
            ),
            backgroundColor: Palette.primary,
            onDestinationSelected: (int _index) {
              index.state = _index;
            },
            labelType: NavigationRailLabelType.selected,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text("Cantiques"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.book),
                label: Text("Bookmarks"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Third'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Defterre Gimmi",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: const [
                    OptionBox(),
                    OptionBox(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
