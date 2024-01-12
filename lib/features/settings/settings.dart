import 'package:beseech/features/shared/app.dart';

import '../../main.dart';
part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings implements Model<Settings> {
  const factory Settings.raw({
    required final double borderRadius,
    required final double padding,
    required final ThemeMode themeMode,
    @MaterialColorConverter() required final MaterialColor materialColor,
  }) = _Settings;
  factory Settings.fromJson(json) => _$SettingsFromJson(json);
  factory Settings() {
    return Settings.raw(
      borderRadius: 0,
      padding: 0,
      themeMode: ThemeMode.system,
      materialColor: Colors.deepOrange,
    );
  }

  const Settings._();
  @override
  Settings call([Settings? t]) => throw UnimplementedError();
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];
  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}

Settings get settings => application.settings;
set settings(Settings _) => application(application.copyWith(settings: _));

ThemeMode get themeMode => settings.themeMode;
set themeMode(ThemeMode? value) {
  settings = settings.copyWith(themeMode: value!);
}

MaterialColor get materialColor => settings.materialColor;
set materialColor(MaterialColor value) =>
    settings = settings.copyWith(materialColor: value);

double get padding => settings.padding;
set padding(double value) => settings = settings.copyWith(padding: value);

double get borderRadius => settings.borderRadius;
set borderRadius(double value) =>
    settings = settings.copyWith(borderRadius: value);
