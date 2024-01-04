import 'package:freezed_annotation/freezed_annotation.dart';
part 'prayers.freezed.dart';
part 'prayers.g.dart';

@freezed
class Prayers with _$Prayers {
  const factory Prayers.raw({
    required final int fajr,
    required final int zuhr,
    required final int asar,
    required final int maghrib,
    required final int isha,
  }) = _Prayers;
  const Prayers._();

  int get all => fajr + zuhr + asar + maghrib + isha;

  factory Prayers() => const Prayers.raw(
        fajr: 0,
        zuhr: 0,
        asar: 0,
        maghrib: 0,
        isha: 0,
      );
  factory Prayers.fromJson(json) => _$PrayersFromJson(json);
}

@freezed
class Prayer with _$Prayer {
  const factory Prayer({
    @Default('') final String name,
    @Default([]) final List prayers,
  }) = _Prayer;

  const Prayer._();

  int get count => prayers.length;

  factory Prayer.fromJson(Map<String, dynamic> json) => _$PrayerFromJson(json);
}
