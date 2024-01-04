import 'package:beseech/features/settings/settings.dart';

import '../../main.dart';

class SettingsBloc extends HydratedCubit<Settings> {
  SettingsBloc() : super(Settings.init());

  Settings get settings => state;
  void setSettings(Settings Function(Settings settings) modifier) {
    emit(modifier(state));
  }

  ThemeMode get themeMode => settings.themeMode;
  void setThemeMode(ThemeMode? value) {
    setSettings((settings) => settings.copyWith(themeMode: value!));
  }

  MaterialColor get materialColor => settings.materialColor;
  void setMaterialColor(MaterialColor value) {
    setSettings(
      (settings) => settings.copyWith(materialColor: value),
    );
  }

  double get padding => settings.padding;
  void setPadding(double value) {
    setSettings((settings) => settings.copyWith(padding: value));
  }

  double get borderRadius => settings.borderRadius;
  void setBorderRadius(double value) {
    setSettings((settings) => settings.copyWith(borderRadius: value));
  }

  @override
  Settings fromJson(json) => Settings.fromJson(json);

  @override
  Map<String, dynamic>? toJson(state) => state.toJson();
}
