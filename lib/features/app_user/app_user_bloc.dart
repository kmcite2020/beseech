// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../prayers/models.dart';
import 'app_user.dart';

class UserAgeBloc extends Cubit<Duration> {
  final AppUserBloc appUserBloc;
  Stream<Duration> ageStream() {
    return Stream.periodic(
      17.milliseconds,
      (_) {
        final now = DateTime.now();
        return Duration(
          milliseconds:
              now.difference(appUserBloc.appUser.dateOfBirth).inMilliseconds,
        );
      },
    );
  }

  UserAgeBloc(
    this.appUserBloc,
  ) : super(Duration.zero) {
    ageStream().listen(
      (data) => emit(data),
    );
  }
}

class AppUserBloc extends HydratedCubit<AppUser> {
  AppUserBloc() : super(AppUser.init());
  late final ageRM = RM.injectStream<Duration>(
    () => Stream.periodic(
      17.milliseconds,
      (_) {
        final now = DateTime.now();
        return Duration(
          milliseconds: now.difference(appUser.dateOfBirth).inMilliseconds,
        );
      },
    ),
    initialState: Duration.zero,
    autoDisposeWhenNotUsed: false,
  );
  Duration get age => ageRM.state;

  AppUser get appUser => state;
  void setAppUser(AppUser Function(AppUser appUser) modifier) {
    // appUserRM.state = modifier(appUser);
    emit(modifier(appUser));
  }

  void setUserName(String value) =>
      setAppUser((appUser) => appUser.copyWith(userName: value));

  void setDateOfBirth(DateTime value) =>
      setAppUser((appUser) => appUser.copyWith(dateOfBirth: value));
  void setAgeBasedOrExplicit(bool value) =>
      setAppUser((appUser) => appUser.copyWith(ageBasedOrExplicit: value));
  void setDateOfPubertyExplicit(DateTime value) =>
      setAppUser((appUser) => appUser.copyWith(dateOfPubertyExplicit: value));
  void setEditing(bool value) =>
      setAppUser((appUser) => appUser.copyWith(editing: value));
  void setAgeVysor(AgeVysor? value) =>
      setAppUser((appUser) => appUser.copyWith(ageVysor: value!));

  @override
  AppUser? fromJson(json) => AppUser.fromJson(json);

  @override
  Map<String, dynamic>? toJson(state) => state.toJson();
}
