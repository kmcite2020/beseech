import '../../../main.dart';

class HomePage extends UI {
  static const page = MaterialPage(child: HomePage());

  const HomePage({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: 'BESEECH'.text(textScaleFactor: 1).pad().container(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              navigator.toDialog(
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
              navigator.to(SettingsPage());
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
            value: fajr,
            increment: incrementFajr,
            decrement: decrementFajr,
          ),
          GenericPrayerCounterUI(
            name: 'ZUHAR',
            value: zuhr,
            increment: incrementZuhr,
            decrement: decrementZuhr,
          ),
          GenericPrayerCounterUI(
            name: 'ASAR',
            value: asar,
            increment: incrementAsar,
            decrement: decrementAsar,
          ),
          GenericPrayerCounterUI(
            name: 'MAGHRIB',
            value: maghrib,
            increment: incrementMaghrib,
            decrement: decrementMaghrib,
          ),
          GenericPrayerCounterUI(
            name: 'ISHA',
            value: isha,
            increment: incrementIsha,
            decrement: decrementIsha,
          ),
          const RemainingPrayersUI()
              .container(
                spread: 20,
                depth: 10,
                curveType: CurveType.concave,
                emboss: true,
                customBorderRadiusValue: borderRadius,
                color: materialColor.shade900,
              )
              .pad(),
        ],
      ),
    );
  }
}
