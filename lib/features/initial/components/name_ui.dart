import 'package:beseech/main.dart';

import '../../app_user/app_user_bloc.dart';

class NameUI extends UI {
  const NameUI({super.key});

  @override
  Widget build(BuildContext context) {
    final AppUserBloc appUserBloc = context.watch();
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          // border: Border.all(
          //   width: 2,
          //   color: settingsBloc.settings.materialColor.withOpacity(.6),
          // ),
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
              'NAME'.text().pad(),
              IconButton(
                onPressed: () {
                  isEditingName.toggle();
                },
                icon: Icon(isEditingName.state ? Icons.done : Icons.edit),
              ).pad()
            ],
          ),
          if (isEditingName.state)
            TextFormField(
              initialValue: appUserBloc.appUser.userName,
              onChanged: appUserBloc.setUserName,
              onFieldSubmitted: (_) => isEditingName.toggle(),
            ).pad()
          else
            appUserBloc.appUser.userName.text().pad().card().pad(),
        ],
      ),
    ).pad();
  }
}

final isEditingName = true.inj();
