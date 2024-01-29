import 'dart:async';

import '../../main.dart';
part 'settings.freezed.dart';
part 'settings.g.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState>
    with HydratedMixin {
  SettingsBloc() : super(SettingsState()) {
    on<_SettingsEventThemeMode>(_OnSettingsEventThemeMode);
    on<_SettingsEventMaterialColor>(_OnSettingsEventMaterialColor);
    on<_SettingsEventBorderRadius>(_OnSettingsEventBorderRadius);
    on<_SettingsEventPadding>(_OnSettingsEventPadding);
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toJson();

  FutureOr<void> _OnSettingsEventThemeMode(
      _SettingsEventThemeMode event, Emitter<SettingsState> emit) {
    emit(state.copyWith(themeMode: event.themeMode));
  }

  FutureOr<void> _OnSettingsEventMaterialColor(
      _SettingsEventMaterialColor event, Emitter<SettingsState> emit) {
    emit(state.copyWith(materialColor: event.materialColor));
  }

  FutureOr<void> _OnSettingsEventBorderRadius(
      _SettingsEventBorderRadius event, Emitter<SettingsState> emit) {
    emit(state.copyWith(borderRadius: event.borderRadius));
  }

  FutureOr<void> _OnSettingsEventPadding(
      _SettingsEventPadding event, Emitter<SettingsState> emit) {
    emit(state.copyWith(padding: event.padding));
  }
}

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent() = _SettingsEvent;
  const factory SettingsEvent.themeMode(ThemeMode themeMode) =
      _SettingsEventThemeMode;
  const factory SettingsEvent.materialColor(
          @MaterialColorConverter() MaterialColor materialColor) =
      _SettingsEventMaterialColor;
  const factory SettingsEvent.borderRadius(double borderRadius) =
      _SettingsEventBorderRadius;
  const factory SettingsEvent.padding(double padding) = _SettingsEventPadding;

  factory SettingsEvent.fromJson(json) => _$SettingsEventFromJson(json);
}

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(8) final double borderRadius,
    @Default(8) final double padding,
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default(Colors.amber)
    @MaterialColorConverter()
    final MaterialColor materialColor,
  }) = _SettingsState;
  factory SettingsState.fromJson(json) => _$SettingsStateFromJson(json);
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];
  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}
