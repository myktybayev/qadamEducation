import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qadam_education/features/home/models/lesson.dart';
import 'package:qadam_education/features/home/repository/database_repository.dart';
import 'package:qadam_education/features/home/ui/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final DatabaseRepository databaseRepository;

  HomeCubit(this.databaseRepository) : super(const HomeState());

  void init() {
    lessonLoading();
    tapsyrmaLoading();
  }

  void lessonLoading() async {
    final lessonList = await databaseRepository.getLessons();
    emit(HomeState(lessons: lessonList, lessonLoading: false));
  }

  void tapsyrmaLoading() async {
    final tapsyrmaList = await databaseRepository.getTapsyrmalar();
    emit(state.copyWith(tapsyrmaList: tapsyrmaList, tapsyrmaLoading: false));
  }

  void addLesson(Lesson newLesson) {
    final list = state.lessons.toList();
    list.add(newLesson);
    emit(state.copyWith(lessons: list));
  }

  // PreloadDataHomeState get preloadedState => state as PreloadDataHomeState;
}
