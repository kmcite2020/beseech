// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardingModel _$OnboardingModelFromJson(Map<String, dynamic> json) {
  return _OnboardingModel.fromJson(json);
}

/// @nodoc
mixin _$OnboardingModel {
  int get onboardingPageIndex => throw _privateConstructorUsedError;
  bool get isOnboardingComplete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingModelCopyWith<OnboardingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingModelCopyWith<$Res> {
  factory $OnboardingModelCopyWith(
          OnboardingModel value, $Res Function(OnboardingModel) then) =
      _$OnboardingModelCopyWithImpl<$Res, OnboardingModel>;
  @useResult
  $Res call({int onboardingPageIndex, bool isOnboardingComplete});
}

/// @nodoc
class _$OnboardingModelCopyWithImpl<$Res, $Val extends OnboardingModel>
    implements $OnboardingModelCopyWith<$Res> {
  _$OnboardingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingPageIndex = null,
    Object? isOnboardingComplete = null,
  }) {
    return _then(_value.copyWith(
      onboardingPageIndex: null == onboardingPageIndex
          ? _value.onboardingPageIndex
          : onboardingPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isOnboardingComplete: null == isOnboardingComplete
          ? _value.isOnboardingComplete
          : isOnboardingComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingModelImplCopyWith<$Res>
    implements $OnboardingModelCopyWith<$Res> {
  factory _$$OnboardingModelImplCopyWith(_$OnboardingModelImpl value,
          $Res Function(_$OnboardingModelImpl) then) =
      __$$OnboardingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int onboardingPageIndex, bool isOnboardingComplete});
}

/// @nodoc
class __$$OnboardingModelImplCopyWithImpl<$Res>
    extends _$OnboardingModelCopyWithImpl<$Res, _$OnboardingModelImpl>
    implements _$$OnboardingModelImplCopyWith<$Res> {
  __$$OnboardingModelImplCopyWithImpl(
      _$OnboardingModelImpl _value, $Res Function(_$OnboardingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingPageIndex = null,
    Object? isOnboardingComplete = null,
  }) {
    return _then(_$OnboardingModelImpl(
      onboardingPageIndex: null == onboardingPageIndex
          ? _value.onboardingPageIndex
          : onboardingPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isOnboardingComplete: null == isOnboardingComplete
          ? _value.isOnboardingComplete
          : isOnboardingComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingModelImpl implements _OnboardingModel {
  _$OnboardingModelImpl(
      {required this.onboardingPageIndex, required this.isOnboardingComplete});

  factory _$OnboardingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingModelImplFromJson(json);

  @override
  final int onboardingPageIndex;
  @override
  final bool isOnboardingComplete;

  @override
  String toString() {
    return 'OnboardingModel(onboardingPageIndex: $onboardingPageIndex, isOnboardingComplete: $isOnboardingComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingModelImpl &&
            (identical(other.onboardingPageIndex, onboardingPageIndex) ||
                other.onboardingPageIndex == onboardingPageIndex) &&
            (identical(other.isOnboardingComplete, isOnboardingComplete) ||
                other.isOnboardingComplete == isOnboardingComplete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, onboardingPageIndex, isOnboardingComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingModelImplCopyWith<_$OnboardingModelImpl> get copyWith =>
      __$$OnboardingModelImplCopyWithImpl<_$OnboardingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingModelImplToJson(
      this,
    );
  }
}

abstract class _OnboardingModel implements OnboardingModel {
  factory _OnboardingModel(
      {required final int onboardingPageIndex,
      required final bool isOnboardingComplete}) = _$OnboardingModelImpl;

  factory _OnboardingModel.fromJson(Map<String, dynamic> json) =
      _$OnboardingModelImpl.fromJson;

  @override
  int get onboardingPageIndex;
  @override
  bool get isOnboardingComplete;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingModelImplCopyWith<_$OnboardingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
