import 'package:freezed_annotation/freezed_annotation.dart';

import '../../main.dart';
part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    required final double borderRadius,
    required final double padding,
    required final ThemeMode themeMode,
    @MaterialColorConverter() required final MaterialColor materialColor,
  }) = _Settings;
  factory Settings.fromJson(json) => _$SettingsFromJson(json);
  factory Settings.init() => Settings(
        borderRadius: 0,
        padding: 0,
        themeMode: ThemeMode.system,
        materialColor: Colors.deepOrange,
      );
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];
  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}
