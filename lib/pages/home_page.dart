import 'package:donutech_appui/utils/my_tab.dart';
import 'package:flutter/material.dart';

import '../tab_pages/burger_tab.dart';
import '../tab_pages/donut_tab.dart';
import '../tab_pages/pancake_tab.dart';
import '../tab_pages/pizza_tab.dart';
import '../tab_pages/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = const [
    // tab donut
    MyTab(
      iconPath: 'assets/icons/donut.png',
    ),
    // tab burger
    MyTab(
      iconPath: 'assets/icons/burger.png',
    ),
    // tab smoothie
    MyTab(
      iconPath: 'assets/icons/smoothie.png',
    ),
    // tab panqueca
    MyTab(
      iconPath: 'assets/icons/pancakes.png',
    ),
    // tab pizza
    MyTab(
      iconPath: 'assets/icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // abre o menu
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  // botão da conta
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    'I want to eat',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 24,
            ),

            // aba da barra
            TabBar(tabs: myTabs),
            // aba da barra view
            const Expanded(
              child: TabBarView(children: [
                // donut page
                DonutTab(),

                // burger p age
                BurgerTab(),

                // smoothie page
                SmoothieTab(),

                // pancake page
                PancakeTab(),

                // pizza page
                PizzaTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
