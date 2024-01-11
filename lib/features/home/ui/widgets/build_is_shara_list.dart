import 'package:flutter/material.dart';
import 'package:qadam_education/common_widgets/custom_text.dart';
import 'package:qadam_education/constants/app_color.dart';

class BuildIsSharaList extends StatelessWidget {
  const BuildIsSharaList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Ата-аналар жиналысы',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor,
              ),
              CustomText(
                text: '19:00 - 20:00',
                fontSize: 16.0,
                color: AppColor.mainColor,
              ),
            ],
          );
        },
      ),
    );
  }
}
