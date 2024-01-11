import 'package:flutter/material.dart';
import 'package:qadam_education/core/navigation/app_bar.dart';
import 'package:qadam_education/core/navigation/bottom_navigation_bar.dart';
import 'package:qadam_education/features/home/home_page.dart';
import 'package:qadam_education/features/news/news_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  late final List<Widget> pages;

  @override
  void initState() {
    pages = const [
      HomePage(),
      NewsPage(),
      NewsPage(),
    ];
    super.initState();
  }

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
      ),
    );
  }
}
