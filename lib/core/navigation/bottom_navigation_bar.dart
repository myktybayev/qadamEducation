import 'package:flutter/material.dart';
import 'package:qadam_education/constants/app_color.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final Function(int index) onTap;
  final int currentIndex;
  final List pageNames = [
    'Басты бет',
    'Жаңалықтар',
    'Іс шаралар',
    'Журнал',
    'Чат'
  ];

  CustomBottomNavigationBar({
    required this.onTap,
    required this.currentIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        BottomNavigationBarItem(
            label: pageNames[0], icon: const Icon(Icons.feed)),
        BottomNavigationBarItem(
            label: pageNames[1], icon: const Icon(Icons.supervisor_account)),
        BottomNavigationBarItem(
            label: pageNames[2],
            icon: const Icon(Icons.supervised_user_circle_outlined)),
        BottomNavigationBarItem(
            label: pageNames[3], icon: const Icon(Icons.groups)),
      ],
    );
  }
}
