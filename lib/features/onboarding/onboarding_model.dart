import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_model.freezed.dart';
part 'onboarding_model.g.dart';

@freezed
class OnboardingModel with _$OnboardingModel {
  factory OnboardingModel({
    required final int onboardingPageIndex,
    required final bool isOnboardingComplete,
  }) = _OnboardingModel;
  factory OnboardingModel.init() {
    return OnboardingModel(
      onboardingPageIndex: 0,
      isOnboardingComplete: false,
    );
  }
  factory OnboardingModel.fromJson(json) => _$OnboardingModelFromJson(json);
}
