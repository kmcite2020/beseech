import 'package:beseech/main.dart';

class RemainingPrayersUI extends UI {
  const RemainingPrayersUI({super.key});

  @override
  Widget build(BuildContext context) {
    final PrayersBloc prayersBloc = context.watch();
    return Column(
      children: [
        'REMAINING PRAYERS'.text(textScaleFactor: 2),
        prayersBloc.state.all.text(textScaleFactor: 3),
      ],
    ).pad();
  }
}
