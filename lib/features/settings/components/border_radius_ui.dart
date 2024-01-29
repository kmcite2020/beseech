import 'package:beseech/main.dart';

class BorderRadiusUI extends UI {
  const BorderRadiusUI({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsBloc settingsBloc = context.watch<SettingsBloc>();
    return Column(
      children: [
        'Border Radius'.text().pad(),
        Slider(
          value: settingsBloc.state.borderRadius,
          onChanged: (_) => settingsBloc.add(SettingsEvent.borderRadius(_)),
        ).pad(),
      ],
    ).card();
  }
}
