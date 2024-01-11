import 'package:qadam_education/constants/app_color.dart';
import 'package:qadam_education/features/home/models/lesson.dart';
import 'package:qadam_education/features/home/models/tapsyrma.dart';

class DatabaseRepository {
  List<Lesson> lessons = [
    Lesson(
      index: 1,
      lessonName: 'Flutter',
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
  ];

  Future<List<Lesson>> getLessons() async {
    await Future.delayed(const Duration(seconds: 1));

    return lessons;
  }

  List<Tapsyrma> tapsyrmaList = [
    Tapsyrma(
      title: 'Математика',
      desc: 'үй тапсырмасы',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor1,
    ),
    Tapsyrma(
      title: 'Math',
      desc: 'hw',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor2,
    ),
    Tapsyrma(
      title: 'Math',
      desc: 'hw',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor3,
    ),
    Tapsyrma(
      title: 'Math',
      desc: 'hw',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor4,
    ),
    Tapsyrma(
      title: 'Math',
      desc: 'hw',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor4,
    ),
    Tapsyrma(
      title: 'Math',
      desc: 'hw',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor4,
    ),
  ];

  Future<List<Tapsyrma>> getTapsyrmalar() async {
    await Future.delayed(const Duration(seconds: 2));

    return tapsyrmaList;
  }
}
