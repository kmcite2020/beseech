import 'package:beseech/main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsBloc settingsBloc = context.watch();
    return Scaffold(
      appBar: AppBar(
        leading: const LeadingBackButton(),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SETTINGS'),
          ],
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 3),
          const ThemeModeUI(),
          MySlider(
            name: 'Border Radius',
            value: settingsBloc.settings.borderRadius,
            onChanged: settingsBloc.setBorderRadius,
            min: 0,
            max: 30,
          ).pad(),
          MySlider(
            name: 'Padding',
            value: settingsBloc.settings.padding,
            onChanged: settingsBloc.setPadding,
            min: 4,
            max: 10,
          ).pad(),
          const MaterialColorsUI(),
          // ElevatedButton(
          //   onPressed: () => domainBloc.init(),
          //   child: 'DELETE ALL'.text(),
          // ).pad(),
        ],
      ),
    );
  }
}
