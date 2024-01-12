import 'package:beseech/main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            value: borderRadius,
            onChanged: (_) => borderRadius = _,
            min: 0,
            max: 30,
          ).pad(),
          MySlider(
            name: 'Padding',
            value: padding,
            onChanged: (_) => padding = _,
            min: 4,
            max: 10,
          ).pad(),
          const MaterialColorsUI(),
          ElevatedButton(
            onPressed: onboarding == Onboarding()
                ? null
                : () => onboarding = Onboarding(),
            child: 'RESET SETTINGS'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
