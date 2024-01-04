import 'package:beseech/main.dart';

class BorderRadiusUI extends UI {
  const BorderRadiusUI({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsBloc settingsBloc = context.watch();
    return Column(
      children: [
        'Border Radius'.text().pad(),
        Slider(
          value: settingsBloc.settings.borderRadius,
          onChanged: settingsBloc.setBorderRadius,
        ).pad(),
      ],
    ).card();
  }
}
