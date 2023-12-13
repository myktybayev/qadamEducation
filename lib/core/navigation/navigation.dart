import 'package:flutter/material.dart';
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
      NewsPage(),
      NewsPage(),
      NewsPage(),
      // BooksPage(),
      // NamazScreen(),
      // FAQPage(),
      // AboutUsPage(),
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
        // appBar: _appBar(context),
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
        backgroundColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        unselectedFontSize: 0,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        selectedItemColor: Colors.white,
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

AppBar _appBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.blue,
    leading: IconButton(
      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      icon: const Icon(Icons.menu),
      onPressed: () {},
    ),
    title: const Text(
      "title",
    ),
    actions: [
      IconButton(
        tooltip: "t",
        icon: const Icon(
          Icons.favorite,
        ),
        onPressed: () {},
      ),
      IconButton(
        tooltip: 'i',
        icon: const Icon(
          Icons.search,
        ),
        onPressed: () {},
      ),
      Row(
        children: [
          Text('hello'),
        ],
      ),
      PopupMenuButton<Text>(
        itemBuilder: (context) {
          return [
            const PopupMenuItem(
              child: Text(
                "first",
              ),
            ),
            const PopupMenuItem(
              child: Text(
                "first",
              ),
            ),
            const PopupMenuItem(
              child: Text(
                "first",
              ),
            ),
          ];
        },
      )
    ],
  );
}
