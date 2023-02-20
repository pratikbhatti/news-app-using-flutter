import 'package:demo33/screens/carPage/view/carPage.dart';
import 'package:demo33/screens/countryPage/view/countryPage.dart';
import 'package:demo33/screens/phonePage/view/phonePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("News"),
          centerTitle: true,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            tabs: [
              Tab(
                text: "Car",
              ),
              Tab(
                text: "Country",
              ),
              Tab(
                text: "Phone",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CarPage(),
            CountryPage(),
            PhonePage(),
          ],
        ),
      ),
    );
  }
}
