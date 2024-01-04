import 'package:beseech/main.dart';

import 'life_ui.dart';

class UserInformationUI extends UI {
  const UserInformationUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppUserBloc appUserBloc = context.watch();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: "INFORMATIONS".text(textScaleFactor: 2).pad(),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                'NAME'.text().pad(),
                if (appUserBloc.appUser.editing)
                  TextFormField(
                    initialValue: appUserBloc.appUser.userName,
                    onChanged: appUserBloc.setUserName,
                    onFieldSubmitted: (value) {
                      appUserBloc.setEditing(false);
                    },
                  ).pad()
                else
                  appUserBloc.appUser.userName.text().pad().container(
                    onTap: () {
                      // appUserBloc.setEditing(true);
                      'works'.inform();
                    },
                  ),
                const Divider(),
                'DATE OF BIRTH'.text().pad(),
                (appUserBloc.appUser.dateOfBirth.humanReadable).text().pad(),
                const Divider(),
                'DATE OF PUBERTY'.text().pad(),
                (appUserBloc.appUser.dateOfPuberty.humanReadable).text().pad(),
                const Divider(),
                const LifeUI()
              ],
            ),
          ).pad(),
        ],
      ),
    );
  }
}
