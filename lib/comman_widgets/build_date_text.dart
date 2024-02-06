import 'package:flutter/material.dart';
import 'package:qadam_education/features/zhurnal/widgets/point_list.dart';

class BuildDateText extends StatelessWidget {
  final int index;
  const BuildDateText({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      pointList[index]['date'].toString(),
      style: const TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 14,
        color: Colors.deepPurple,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
