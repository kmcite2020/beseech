import 'package:beseech/main.dart';

import 'onboarding_model.dart';

final onboardingBloc = OnboardingBloc();

class OnboardingBloc extends HydratedCubit<OnboardingModel> {
  OnboardingBloc() : super(OnboardingModel.init());

  void setOnboardingModel(
    OnboardingModel modifier,
  ) =>
      emit(modifier);

  void setOnboardingPageIndex(int value) {
    setOnboardingModel(
      state.copyWith(onboardingPageIndex: value),
    );
  }

  void setOnboardingComplete(bool value) {
    setOnboardingModel(
      state.copyWith(isOnboardingComplete: value),
    );
  }

  @override
  OnboardingModel? fromJson(json) => OnboardingModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson(state) => state.toJson();
}
