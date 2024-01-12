import '../../../main.dart';

class ThemeModeUI extends UI {
  const ThemeModeUI({super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        'THEME MODE'.text().pad(),
        DropdownButtonFormField(
          value: themeMode,
          items: ThemeMode.values
              .map(
                (themeMode) => DropdownMenuItem(
                  value: themeMode,
                  child: themeMode.name.toUpperCase().text(),
                ),
              )
              .toList(),
          onChanged: (_) => themeMode = _!,
        ).pad(),
      ],
    ).card();
  }
}
