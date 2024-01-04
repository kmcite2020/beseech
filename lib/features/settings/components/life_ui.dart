import 'package:beseech/main.dart';

class LifeUI extends UI {
  const LifeUI({super.key});

  @override
  Widget build(BuildContext context) {
    final AppUserBloc appUserBloc = context.watch();
    final SettingsBloc settingsBloc = context.watch();
    final UserAgeBloc userAgeBloc = context.watch();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        'LIFE'.text().pad(),
        DropdownButtonFormField(
          value: appUserBloc.appUser.ageVysor,
          items: AgeVysor.values
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: e.name.toUpperCase().text(),
                ),
              )
              .toList(),
          onChanged: appUserBloc.setAgeVysor,
          padding: EdgeInsets.all(settingsBloc.padding),
        ),
        () {
          final age = userAgeBloc.state;
          switch (appUserBloc.appUser.ageVysor) {
            case AgeVysor.years:
              return "${age.inDays ~/ (30 * 12)} YEARS".text();
            case AgeVysor.months:
              return "${age.inDays ~/ 30} MONTHS".text();
            case AgeVysor.days:
              return "${age.inDays} DAYS".text();
            case AgeVysor.hours:
              return "${age.inHours} HOURS".text();
            case AgeVysor.minutes:
              return "${age.inMinutes} MINUTES".text();
            case AgeVysor.seconds:
              return "${age.inSeconds} SECONDS".text();
          }
        }()
            .pad()
      ],
    );
  }
}
