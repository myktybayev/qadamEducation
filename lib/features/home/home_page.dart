import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qadam_education/features/home/models/lesson.dart';
import 'package:qadam_education/features/home/ui/cubit/home_cubit.dart';
import 'package:qadam_education/features/home/ui/is_sharalar_view.dart';
import 'package:qadam_education/features/home/ui/sabak_kestesi_view.dart';
import 'package:qadam_education/features/home/ui/tapsyrmalar_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeCubit get bloc => context.read<HomeCubit>();

  @override
  void initState() {
    context.read<HomeCubit>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeCubit>().state;

    final lessons = state.lessons;
    final lessonLoading = state.lessonLoading;

    final tapsyrmaList = state.tapsyrmaList;
    final tapsyrmaLoading = state.tapsyrmaLoading;

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SabakKestesiView(
          lessons: lessons,
          lessonLoading: lessonLoading,
          onPressed: () {
            context.read<HomeCubit>().addLesson(
                  Lesson(
                    index: 6,
                    lessonName: 'New Lesson',
                    time1: '10:00',
                    time2: '11:00',
                  ),
                );
          },
        ),
        TapsyrmalarView(
          tapsyrmaList: tapsyrmaList,
          tapsyrmaLoading: tapsyrmaLoading,
        ),
        const IsSaharalarView(),
      ],
    );
  }
}
