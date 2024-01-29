import 'package:flutter/material.dart';
import 'package:qadam_education/constants/app_color.dart';
import 'package:qadam_education/features/home/home.dart';
import 'package:qadam_education/features/news/news_page.dart';
import 'package:qadam_education/features/zhurnal/zhurnal_page.dart';

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
      ZhurnalPage(),
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
        appBar: _appBar(context),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: currentIndex,
          children: pages,
        ),
        bottomNavigationBar: _BottomBars(
          onTap: onTap,
          currentIndex: currentIndex,
        ));
  }
}

AppBar _appBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 70,
    automaticallyImplyLeading: false,
    backgroundColor: AppColor.mainColor,
    leading: IconButton(
      icon: const Icon(
        Icons.account_circle_rounded,
        size: 50,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
    title: const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'User Name',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        Text(
          'email@gmail.com',
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        ),
      ],
    ),
  );
}

class _BottomBars extends StatelessWidget {
  final Function(int index) onTap;
  final int currentIndex;

  const _BottomBars({
    required this.onTap,
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List pageNames = ['Басты бет', 'Жаңалықтар', 'Іс шаралар', 'Журнал', 'Чат'];

    return BottomNavigationBar(
        onTap: onTap,
        backgroundColor: AppColor.whiteColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        unselectedFontSize: 0,
        unselectedItemColor: AppColor.mainColor.withOpacity(0.5),
        selectedItemColor: AppColor.mainColor,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedFontSize: 14,
        selectedLabelStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        elevation: 0,
        items: [
          BottomNavigationBarItem(label: pageNames[0], icon: Icon(Icons.feed)),
          BottomNavigationBarItem(
              label: pageNames[1], icon: Icon(Icons.supervisor_account)),
          BottomNavigationBarItem(
              label: pageNames[2],
              icon: Icon(Icons.supervised_user_circle_outlined)),
          BottomNavigationBarItem(
              label: pageNames[3], icon: Icon(Icons.groups)),
        ]);
  }
}
