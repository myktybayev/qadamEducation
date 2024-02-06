import 'package:flutter/material.dart';
import 'package:qadam_education/features/zhurnal/widgets/list_builder_bagalar.dart';

class Bagalar extends StatefulWidget {
  const Bagalar({Key? key}) : super(key: key);

  @override
  State<Bagalar> createState() => _BagalarState();
}

class _BagalarState extends State<Bagalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListBuilderBagalar(),
    );
  }
}
