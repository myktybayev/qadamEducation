import 'package:flutter/material.dart';
import 'package:qadam_education/features/zhurnal/widgets/build_card.dart';
import 'package:qadam_education/features/zhurnal/widgets/point_list.dart';

class ListBuilderBagalar extends StatelessWidget {
  ListBuilderBagalar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: pointList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: BuildCard(index: index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
