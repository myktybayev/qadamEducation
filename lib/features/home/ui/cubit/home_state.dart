import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qadam_education/features/home/models/lesson.dart';
import 'package:qadam_education/features/home/models/tapsyrma.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Lesson> lessons,
    @Default([]) List<Tapsyrma> tapsyrmaList,
    @Default(true) lessonLoading,
    @Default(true) tapsyrmaLoading,
  }) = InitHomeState;

  // const factory HomeState.init() = InitHomeState;
  //
  // const factory HomeState.preloadData({
  //   required List<Lesson> lessonList,
  // }) = PreloadDataHomeState;
  //
  // const factory HomeState.preloadData() = PreloadDataHomeState;
}
