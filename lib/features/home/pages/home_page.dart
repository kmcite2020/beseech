import 'package:beseech/features/settings/components/user_information_ui.dart';
import 'package:beseech/features/home/components/generic_prayer_counter_ui.dart';
import 'package:beseech/features/settings/pages/settings_page.dart';
import 'package:beseech/features/shared/navigation_extensions.dart';
import 'package:beseech/main.dart';

import '../components/remainig_prayers_ui.dart';

class HomePage extends UI {
  static const page = MaterialPage(child: HomePage());

  const HomePage({super.key});
  @override
  Widget build(context) {
    final PrayersBloc prayersBloc = context.watch();
    final SettingsBloc settingsBloc = context.watch();
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: 'BESEECH'.text(textScaleFactor: 1).pad().container(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.dialog(
                Dialog(
                  child: UserInformationUI(),
                ),
              );
            },
            icon: const Icon(Icons.info),
          ).container(),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {
              context.push(SettingsPage());
            },
            icon: const Icon(Icons.settings),
          ).container(),
          const SizedBox(width: 5),
        ],
      ),
      body: ListView(
        children: [
          GenericPrayerCounterUI(
            name: 'FAJAR',
            value: prayersBloc.fajr,
            increment: prayersBloc.incrementFajr,
            decrement: prayersBloc.decrementFajr,
          ),
          GenericPrayerCounterUI(
            name: 'ZUHAR',
            value: prayersBloc.zuhr,
            increment: prayersBloc.incrementZuhr,
            decrement: prayersBloc.decrementZuhr,
          ),
          GenericPrayerCounterUI(
            name: 'ASAR',
            value: prayersBloc.asar,
            increment: prayersBloc.incrementAsar,
            decrement: prayersBloc.decrementAsar,
          ),
          GenericPrayerCounterUI(
            name: 'MAGHRIB',
            value: prayersBloc.maghrib,
            increment: prayersBloc.incrementMaghrib,
            decrement: prayersBloc.decrementMaghrib,
          ),
          GenericPrayerCounterUI(
            name: 'ISHA',
            value: prayersBloc.isha,
            increment: prayersBloc.incrementIsha,
            decrement: prayersBloc.decrementIsha,
          ),
          const RemainingPrayersUI()
              .container(
                spread: 20,
                depth: 10,
                curveType: CurveType.concave,
                emboss: true,
                borderRadius: settingsBloc.settings.borderRadius,
                color: settingsBloc.settings.materialColor.shade900,
              )
              .pad(),
        ],
      ),
    );
  }
}
