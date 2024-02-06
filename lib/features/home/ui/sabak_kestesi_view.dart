import 'package:flutter/material.dart';
import 'package:qadam_education/common_widgets/custom_text.dart';
import 'package:qadam_education/constants/app_color.dart';
import 'package:qadam_education/features/home/models/lesson.dart';
import 'package:qadam_education/features/home/ui/widgets/build_time_table.dart';

class SabakKestesiView extends StatelessWidget {
  final List<Lesson> lessons;
  final bool lessonLoading;
  final void Function()? onPressed;

  const SabakKestesiView({
    super.key,
    required this.lessons,
    this.onPressed,
    required this.lessonLoading,
  });

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.sizeOf(context);

    return Container(
      width: mediaSize.width,
      height: 140,
      color: AppColor.mainColor.withAlpha(1500),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(text: 'Сабақ кестесі'),
                IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
          lessonLoading
              ? const Center(
                  child: CircularProgressIndicator(
                  color: Colors.white,
                ))
              : BuildTimeTable(lessons: lessons),
        ],
      ),
    );
  }
}
