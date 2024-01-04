// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayersImpl _$$PrayersImplFromJson(Map<String, dynamic> json) =>
    _$PrayersImpl(
      fajr: json['fajr'] as int,
      zuhr: json['zuhr'] as int,
      asar: json['asar'] as int,
      maghrib: json['maghrib'] as int,
      isha: json['isha'] as int,
    );

Map<String, dynamic> _$$PrayersImplToJson(_$PrayersImpl instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'zuhr': instance.zuhr,
      'asar': instance.asar,
      'maghrib': instance.maghrib,
      'isha': instance.isha,
    };

_$PrayerImpl _$$PrayerImplFromJson(Map<String, dynamic> json) => _$PrayerImpl(
      name: json['name'] as String? ?? '',
      prayers: json['prayers'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$PrayerImplToJson(_$PrayerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'prayers': instance.prayers,
    };
