import '../../../main.dart';

class ThemeModeUI extends UI {
  const ThemeModeUI({super.key});

  @override
  Widget build(context) {
    final SettingsBloc settingsBloc = context.watch();
    return Column(
      children: [
        'THEME MODE'.text().pad(),
        DropdownButtonFormField(
          value: settingsBloc.themeMode,
          items: ThemeMode.values
              .map(
                (themeMode) => DropdownMenuItem(
                  value: themeMode,
                  child: themeMode.name.toUpperCase().text(),
                ),
              )
              .toList(),
          onChanged: settingsBloc.setThemeMode,
        ).pad(),
      ],
    ).card();
  }
}
