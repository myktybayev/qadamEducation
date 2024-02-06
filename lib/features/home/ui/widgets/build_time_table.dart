import 'package:flutter/material.dart';
import 'package:qadam_education/features/home/models/lesson.dart';
import 'package:qadam_education/features/home/ui/widgets/build_time_table_item.dart';

class BuildTimeTable extends StatelessWidget {
  final List<Lesson> lessons;

  const BuildTimeTable({
    super.key,
    required this.lessons,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: lessons.length,
          itemBuilder: (context, index) {
            return BuildTimeTableItem(lesson: lessons[index]);
          }),
    );
  }
}
