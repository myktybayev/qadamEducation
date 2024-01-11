import 'package:flutter/material.dart';
import 'package:qadam_education/constants/app_color.dart';
import 'package:qadam_education/features/home/models/tapsyrma.dart';
import 'package:qadam_education/features/home/ui/widgets/build_tapsyrma_grid_item.dart';

class BuildTapsyrmaGrid extends StatelessWidget {
  final List<Tapsyrma> tapsyrmaList;
  final bool tapsyrmaLoading;

  const BuildTapsyrmaGrid({
    super.key,
    required this.tapsyrmaList,
    required this.tapsyrmaLoading,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: tapsyrmaLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainColor,
              ),
            )
          : GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // number of items in each row
                childAspectRatio: 0.72,
                mainAxisSpacing: 8.0, // spacing between rows
                crossAxisSpacing: 8.0, // spacing between columns
              ),
              padding: const EdgeInsets.all(8.0), // padding around the grid
              itemCount: tapsyrmaList.length, // total number of items
              itemBuilder: (context, index) {
                return BuildTapsyrmaGridItem(tapsyrma: tapsyrmaList[index]);
              },
            ),
    );
  }
}
