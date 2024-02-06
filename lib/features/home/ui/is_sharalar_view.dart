import 'package:flutter/material.dart';
import 'package:qadam_education/common_widgets/custom_text.dart';
import 'package:qadam_education/constants/app_color.dart';
import 'package:qadam_education/features/home/ui/widgets/build_is_shara_list.dart';

class IsSaharalarView extends StatelessWidget {
  const IsSaharalarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Іс-шаралар',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: AppColor.mainColor,
          ),
          BuildIsSharaList(),
        ],
      ),
    );
  }
}
