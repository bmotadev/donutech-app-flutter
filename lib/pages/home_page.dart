import 'package:donutech_appui/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = [
    // tab donut
    MyTab(
      iconPath: 'assets/icons/donut.png',
    ),
    // tab burger
    MyTab(
      iconPath: 'assets/icons/donut.png',
    ),
    // tab smoothie
    MyTab(
      iconPath: 'assets/icons/donut.png',
    ),
    // tab panqueca
    MyTab(
      iconPath: 'assets/icons/donut.png',
    ),
    // tab pizza
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
            TabBar(tabs: myTabs)
            // aba da barra view
          ],
        ),
      ),
    );
  }
}
