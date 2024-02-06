import 'package:flutter/material.dart';
import 'package:qadam_education/features/zhurnal/widgets/list_builder_profile.dart';

class SabakkaKatysu extends StatefulWidget {
  const SabakkaKatysu({Key? key}) : super(key: key);

  @override
  State<SabakkaKatysu> createState() => _SabakPageState();
}

class _SabakPageState extends State<SabakkaKatysu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListBuilderProfile(),
    );
  }
}
