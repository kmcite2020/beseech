import 'package:beseech/features/shared/navigation_extensions.dart';
import 'package:beseech/main.dart';

class GetStartedButton extends UI {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppUserBloc appUserBloc = context.watch();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Row(
        //   children: [
        //     Checkbox(
        //       value: domainBloc.domain.agreed,
        //       onChanged: domainBloc.setAgreed,
        //     ),
        //     'Are you sure?'.text(),
        //   ],
        // ).pad(),
        ElevatedButton(
          onPressed: appUserBloc.state.isUserNameValid
              ? () {
                  onboardingBloc.setOnboardingComplete(true);
                }
              : null,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(60),
          ),
          child: 'Get Started'.text(),
        ).pad(),
        ElevatedButton(
          onPressed: () {
            context.push(HomePage());
          },
          child: 'bypass'.text(),
        ).pad(),
      ],
    ).pad();
  }
}
