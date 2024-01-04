import 'package:beseech/main.dart';

import '../../app_user/app_user_bloc.dart';
import '../pages/initial_page.dart';

class DateOfPubertyUI extends UI {
  const DateOfPubertyUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppUserBloc appUserBloc = context.watch();
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          // color: settingsBloc.settings.materialColor.withOpacity(.6),
        ),
        // borderRadius: BorderRadius.circular(
        //   settingsBloc.settings.borderRadius,
        // ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              'DATE OF PUBERTY - became adult on'.text().pad(),
            ],
          ),
          appUserBloc.appUser.dateOfPuberty.humanReadable
              .text()
              .pad()
              .card()
              .pad(),
          ElevatedButton(
            onPressed: () => updateDateOfPuberty(context: context),
            child: 'What is your puberty date?'.text(),
          ).pad(),
        ],
      ),
    ).pad();
  }
}
