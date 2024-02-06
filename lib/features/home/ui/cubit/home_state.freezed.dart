// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  List<Lesson> get lessons => throw _privateConstructorUsedError;
  List<Tapsyrma> get tapsyrmaList => throw _privateConstructorUsedError;
  dynamic get lessonLoading => throw _privateConstructorUsedError;
  dynamic get tapsyrmaLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<Lesson> lessons,
      List<Tapsyrma> tapsyrmaList,
      dynamic lessonLoading,
      dynamic tapsyrmaLoading});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessons = null,
    Object? tapsyrmaList = null,
    Object? lessonLoading = freezed,
    Object? tapsyrmaLoading = freezed,
  }) {
    return _then(_value.copyWith(
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      tapsyrmaList: null == tapsyrmaList
          ? _value.tapsyrmaList
          : tapsyrmaList // ignore: cast_nullable_to_non_nullable
              as List<Tapsyrma>,
      lessonLoading: freezed == lessonLoading
          ? _value.lessonLoading
          : lessonLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tapsyrmaLoading: freezed == tapsyrmaLoading
          ? _value.tapsyrmaLoading
          : tapsyrmaLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitHomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitHomeStateCopyWith(
          _$InitHomeState value, $Res Function(_$InitHomeState) then) =
      __$$InitHomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Lesson> lessons,
      List<Tapsyrma> tapsyrmaList,
      dynamic lessonLoading,
      dynamic tapsyrmaLoading});
}

/// @nodoc
class __$$InitHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitHomeState>
    implements _$$InitHomeStateCopyWith<$Res> {
  __$$InitHomeStateCopyWithImpl(
      _$InitHomeState _value, $Res Function(_$InitHomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessons = null,
    Object? tapsyrmaList = null,
    Object? lessonLoading = freezed,
    Object? tapsyrmaLoading = freezed,
  }) {
    return _then(_$InitHomeState(
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      tapsyrmaList: null == tapsyrmaList
          ? _value._tapsyrmaList
          : tapsyrmaList // ignore: cast_nullable_to_non_nullable
              as List<Tapsyrma>,
      lessonLoading:
          freezed == lessonLoading ? _value.lessonLoading! : lessonLoading,
      tapsyrmaLoading: freezed == tapsyrmaLoading
          ? _value.tapsyrmaLoading!
          : tapsyrmaLoading,
    ));
  }
}

/// @nodoc

class _$InitHomeState implements InitHomeState {
  const _$InitHomeState(
      {final List<Lesson> lessons = const [],
      final List<Tapsyrma> tapsyrmaList = const [],
      this.lessonLoading = true,
      this.tapsyrmaLoading = true})
      : _lessons = lessons,
        _tapsyrmaList = tapsyrmaList;

  final List<Lesson> _lessons;
  @override
  @JsonKey()
  List<Lesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  final List<Tapsyrma> _tapsyrmaList;
  @override
  @JsonKey()
  List<Tapsyrma> get tapsyrmaList {
    if (_tapsyrmaList is EqualUnmodifiableListView) return _tapsyrmaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tapsyrmaList);
  }

  @override
  @JsonKey()
  final dynamic lessonLoading;
  @override
  @JsonKey()
  final dynamic tapsyrmaLoading;

  @override
  String toString() {
    return 'HomeState(lessons: $lessons, tapsyrmaList: $tapsyrmaList, lessonLoading: $lessonLoading, tapsyrmaLoading: $tapsyrmaLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitHomeState &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            const DeepCollectionEquality()
                .equals(other._tapsyrmaList, _tapsyrmaList) &&
            const DeepCollectionEquality()
                .equals(other.lessonLoading, lessonLoading) &&
            const DeepCollectionEquality()
                .equals(other.tapsyrmaLoading, tapsyrmaLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lessons),
      const DeepCollectionEquality().hash(_tapsyrmaList),
      const DeepCollectionEquality().hash(lessonLoading),
      const DeepCollectionEquality().hash(tapsyrmaLoading));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitHomeStateCopyWith<_$InitHomeState> get copyWith =>
      __$$InitHomeStateCopyWithImpl<_$InitHomeState>(this, _$identity);
}

abstract class InitHomeState implements HomeState {
  const factory InitHomeState(
      {final List<Lesson> lessons,
      final List<Tapsyrma> tapsyrmaList,
      final dynamic lessonLoading,
      final dynamic tapsyrmaLoading}) = _$InitHomeState;

  @override
  List<Lesson> get lessons;
  @override
  List<Tapsyrma> get tapsyrmaList;
  @override
  dynamic get lessonLoading;
  @override
  dynamic get tapsyrmaLoading;
  @override
  @JsonKey(ignore: true)
  _$$InitHomeStateCopyWith<_$InitHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
