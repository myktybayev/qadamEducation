import 'package:flutter/material.dart';
import 'package:qadam_education/constants/app_color.dart';
import 'package:qadam_education/features/home/models/lesson.dart';

class SabakKestesi extends StatelessWidget {
  SabakKestesi({super.key});

  @override
  Widget build(BuildContext context) {
    late Size mediaSize = MediaQuery.of(context).size;

    return Container(
      width: mediaSize.width,
      height: 135,
      color: AppColor.mainColor.withAlpha(1500),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _customText(text: 'Сабақ кестесі'),
          ),
          _lessonList(),
        ],
      ),
    );
  }

  List<Lesson> lessons = [
    Lesson(
      index: 1,
      lessonName: 'Физра',
      time1: '08:45',
      time2: '09:00',
    ),
    Lesson(
      index: 2,
      lessonName: 'Математика',
      time1: '09:45',
      time2: '10:00',
    ),
    Lesson(
      index: 3,
      lessonName: 'Физика',
      time1: '10:45',
      time2: '11:00',
    ),
    Lesson(
      index: 4,
      lessonName: 'Физика',
      time1: '10:45',
      time2: '11:00',
    ),
    Lesson(
      index: 5,
      lessonName: 'Физика',
      time1: '10:45',
      time2: '11:00',
    ),
  ];

  Widget _lessonList() {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: lessons.length,
          itemBuilder: (context, index) {
            return _lessonItem(lessons[index]);
          }),
    );
  }

  Widget _lessonItem(Lesson lesson) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.4),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _customText(text: '${lesson.index}'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: _customText(text: lesson.lessonName),
            ),
            SizedBox(height: 5.0),
            _customText(text: lesson.time1),
            _customText(text: lesson.time2),
          ],
        ),
      ),
    );
  }

  Widget _customText(
      {required String text,
      double fontSize = 14.0,
      fontWeight = FontWeight.normal,
      Color color = Colors.white}) {
    return Text(
      '$text',
      maxLines: 1,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
