import 'package:flutter/material.dart';
import 'package:qadam_education/common_widgets/custom_text.dart';
import 'package:qadam_education/constants/app_color.dart';
import 'package:qadam_education/features/home/models/tapsyrma.dart';
import 'package:qadam_education/features/home/ui/widgets/build_tapsyrma_grid.dart';

class TapsyrmalarView extends StatelessWidget {
  final List<Tapsyrma> tapsyrmaList;
  final bool tapsyrmaLoading;
  final void Function()? onPressed;

  const TapsyrmalarView({
    super.key,
    required this.tapsyrmaList,
    required this.tapsyrmaLoading,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomText(
              text: 'Тапсырмалар',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: AppColor.mainColor),
        ),
        BuildTapsyrmaGrid(
          tapsyrmaList: tapsyrmaList,
          tapsyrmaLoading: tapsyrmaLoading,
        ),
      ],
    );
  }
}
