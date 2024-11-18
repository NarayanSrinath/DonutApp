import 'package:donutapp/tabs/burger_tab.dart';
import 'package:donutapp/tabs/pancakes_tab.dart';
import 'package:donutapp/tabs/pizza_tab.dart';
import 'package:donutapp/tabs/smoothie_tab.dart';
import 'package:donutapp/utils/my_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../tabs/donut_tab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> mytabs = const [
    MyTab(icanPath: 'lib/assets/icons/donut.png'),
    MyTab(icanPath: 'lib/assets/icons/burger.png'),
    MyTab(icanPath: 'lib/assets/icons/pancakes.png'),
    MyTab(icanPath: 'lib/assets/icons/pizza.png'),
    MyTab(icanPath: 'lib/assets/icons/smoothie.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 36,
                color: Colors.grey.shade800,
              ),
              onPressed: () {
                //Menu OnTap
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 36,
                  color: Colors.grey.shade800,
                ),
                onPressed: () {
                  //profile icon
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    ' Eat',
                    style: GoogleFonts.lato(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //tab bar

            TabBar(tabs: mytabs),

            // tab bar view
            const Expanded(
                child: TabBarView(children: [
                //donut
              DonutTab(),

              // burger
              BurgerTab(),

              //pancakes
              PancakesTab(),
              //pizza
              PizzaTab(),

              //smoothie
              SmoothieTab()
            ]))
          ],
        ),
      ),
    );
  }
}
