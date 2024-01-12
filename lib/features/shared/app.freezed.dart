// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return _Application.fromJson(json);
}

/// @nodoc
mixin _$Application {
  Settings get settings => throw _privateConstructorUsedError;
  Prayers get prayers => throw _privateConstructorUsedError;
  Onboarding get onboarding => throw _privateConstructorUsedError;
  AppUser get appUser => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings, Prayers prayers,
            Onboarding onboarding, AppUser appUser)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Settings settings, Prayers prayers, Onboarding onboarding,
            AppUser appUser)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings, Prayers prayers, Onboarding onboarding,
            AppUser appUser)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Application value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Application value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Application value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationCopyWith<Application> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationCopyWith<$Res> {
  factory $ApplicationCopyWith(
          Application value, $Res Function(Application) then) =
      _$ApplicationCopyWithImpl<$Res, Application>;
  @useResult
  $Res call(
      {Settings settings,
      Prayers prayers,
      Onboarding onboarding,
      AppUser appUser});

  $SettingsCopyWith<$Res> get settings;
  $PrayersCopyWith<$Res> get prayers;
  $OnboardingCopyWith<$Res> get onboarding;
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class _$ApplicationCopyWithImpl<$Res, $Val extends Application>
    implements $ApplicationCopyWith<$Res> {
  _$ApplicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? prayers = null,
    Object? onboarding = null,
    Object? appUser = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      prayers: null == prayers
          ? _value.prayers
          : prayers // ignore: cast_nullable_to_non_nullable
              as Prayers,
      onboarding: null == onboarding
          ? _value.onboarding
          : onboarding // ignore: cast_nullable_to_non_nullable
              as Onboarding,
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrayersCopyWith<$Res> get prayers {
    return $PrayersCopyWith<$Res>(_value.prayers, (value) {
      return _then(_value.copyWith(prayers: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OnboardingCopyWith<$Res> get onboarding {
    return $OnboardingCopyWith<$Res>(_value.onboarding, (value) {
      return _then(_value.copyWith(onboarding: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApplicationImplCopyWith<$Res>
    implements $ApplicationCopyWith<$Res> {
  factory _$$ApplicationImplCopyWith(
          _$ApplicationImpl value, $Res Function(_$ApplicationImpl) then) =
      __$$ApplicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Settings settings,
      Prayers prayers,
      Onboarding onboarding,
      AppUser appUser});

  @override
  $SettingsCopyWith<$Res> get settings;
  @override
  $PrayersCopyWith<$Res> get prayers;
  @override
  $OnboardingCopyWith<$Res> get onboarding;
  @override
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$ApplicationImplCopyWithImpl<$Res>
    extends _$ApplicationCopyWithImpl<$Res, _$ApplicationImpl>
    implements _$$ApplicationImplCopyWith<$Res> {
  __$$ApplicationImplCopyWithImpl(
      _$ApplicationImpl _value, $Res Function(_$ApplicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? prayers = null,
    Object? onboarding = null,
    Object? appUser = null,
  }) {
    return _then(_$ApplicationImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      prayers: null == prayers
          ? _value.prayers
          : prayers // ignore: cast_nullable_to_non_nullable
              as Prayers,
      onboarding: null == onboarding
          ? _value.onboarding
          : onboarding // ignore: cast_nullable_to_non_nullable
              as Onboarding,
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplicationImpl extends _Application {
  const _$ApplicationImpl(
      {required this.settings,
      required this.prayers,
      required this.onboarding,
      required this.appUser})
      : super._();

  factory _$ApplicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplicationImplFromJson(json);

  @override
  final Settings settings;
  @override
  final Prayers prayers;
  @override
  final Onboarding onboarding;
  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'Application.raw(settings: $settings, prayers: $prayers, onboarding: $onboarding, appUser: $appUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.prayers, prayers) || other.prayers == prayers) &&
            (identical(other.onboarding, onboarding) ||
                other.onboarding == onboarding) &&
            (identical(other.appUser, appUser) || other.appUser == appUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, settings, prayers, onboarding, appUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationImplCopyWith<_$ApplicationImpl> get copyWith =>
      __$$ApplicationImplCopyWithImpl<_$ApplicationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings, Prayers prayers,
            Onboarding onboarding, AppUser appUser)
        raw,
  }) {
    return raw(settings, prayers, onboarding, appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Settings settings, Prayers prayers, Onboarding onboarding,
            AppUser appUser)?
        raw,
  }) {
    return raw?.call(settings, prayers, onboarding, appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings, Prayers prayers, Onboarding onboarding,
            AppUser appUser)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(settings, prayers, onboarding, appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Application value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Application value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Application value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplicationImplToJson(
      this,
    );
  }
}

abstract class _Application extends Application {
  const factory _Application(
      {required final Settings settings,
      required final Prayers prayers,
      required final Onboarding onboarding,
      required final AppUser appUser}) = _$ApplicationImpl;
  const _Application._() : super._();

  factory _Application.fromJson(Map<String, dynamic> json) =
      _$ApplicationImpl.fromJson;

  @override
  Settings get settings;
  @override
  Prayers get prayers;
  @override
  Onboarding get onboarding;
  @override
  AppUser get appUser;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationImplCopyWith<_$ApplicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
