import 'package:flutter/material.dart';
import 'package:qadam_education/common_widgets/custom_text.dart';
import 'package:qadam_education/features/home/models/lesson.dart';

class BuildTimeTableItem extends StatelessWidget {
  final Lesson lesson;

  const BuildTimeTableItem({
    super.key,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 4.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(text: '${lesson.index}'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomText(text: lesson.lessonName),
          ),
          const SizedBox(height: 5.0),
          CustomText(text: lesson.time1),
          CustomText(text: lesson.time2),
        ],
      ),
    );
  }
}
