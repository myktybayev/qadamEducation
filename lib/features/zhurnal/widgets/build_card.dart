import 'package:flutter/material.dart';
import 'package:qadam_education/comman_widgets/build_custom_text.dart';
import 'package:qadam_education/comman_widgets/build_date_text.dart';
import 'package:qadam_education/comman_widgets/build_number_text.dart';

class BuildCard extends StatelessWidget {
  final int index;
  const BuildCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        side: BorderSide(width: 1, color: Colors.deepPurple),
      ),
      child: ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BuildDateText(index: index),
            BuildCustomText(index: index),
            BuildNumberText(index: index),
          ],
        ),
      ),
    );
  }
}
