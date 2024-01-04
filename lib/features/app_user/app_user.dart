import 'package:freezed_annotation/freezed_annotation.dart';

import '../prayers/models.dart';
part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  static const fourteenYears = Duration(days: 365 * 14);

  const AppUser._();
  factory AppUser({
    required final String userName,
    required final bool editing,
    required final bool ageBasedOrExplicit,
    required final DateTime dateOfBirth,
    required final DateTime dateOfPubertyExplicit,
    required final AgeVysor ageVysor,
  }) = _AppUser;
  factory AppUser.init() => AppUser(
        userName: '',
        editing: false,
        ageBasedOrExplicit: false,
        dateOfBirth: DateTime.now(),
        dateOfPubertyExplicit: DateTime.now(),
        ageVysor: AgeVysor.seconds,
      );

  DateTime get dateOfPuberty {
    if (ageBasedOrExplicit) {
      return dateOfBirth.add(fourteenYears);
    } else {
      return dateOfPubertyExplicit;
    }
  }

  Duration get age => DateTime.now().difference(dateOfBirth);

  bool get isUserNameValid => userName != '';
  bool get isUserAdult => dateOfPuberty.isBefore(DateTime.now());

  factory AppUser.fromJson(json) => _$AppUserFromJson(json);
}
