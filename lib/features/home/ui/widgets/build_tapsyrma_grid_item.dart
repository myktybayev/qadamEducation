import 'package:flutter/material.dart';
import 'package:qadam_education/common_widgets/custom_text.dart';
import 'package:qadam_education/features/home/models/tapsyrma.dart';

class BuildTapsyrmaGridItem extends StatelessWidget {
  final Tapsyrma tapsyrma;
  const BuildTapsyrmaGridItem({
    super.key,
    required this.tapsyrma,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: tapsyrma.backgroundColor, // color of grid items
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: tapsyrma.title, fontSize: 18.0),
                  CustomText(text: tapsyrma.desc, fontSize: 16.0),
                  CustomText(text: tapsyrma.date, fontSize: 16.0),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: 90,
              height: 90,
              child: Opacity(
                opacity: 0.8,
                child: Icon(
                  Icons.leaderboard_sharp,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
