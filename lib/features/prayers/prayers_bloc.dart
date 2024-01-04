import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'prayers.dart';

final prayersBloc = PrayersBloc();

class PrayersBloc extends HydratedCubit<Prayers> {
  PrayersBloc() : super(Prayers());

  void setPrayers(Prayers prayers) => emit(prayers);

  int get fajr => state.fajr;
  int get zuhr => state.zuhr;
  int get asar => state.asar;
  int get maghrib => state.maghrib;
  int get isha => state.isha;

  void setFajr(int value) => setPrayers((state.copyWith(fajr: value)));

  void setZuhr(int value) => setPrayers((state.copyWith(zuhr: value)));

  void setAsar(int value) => setPrayers((state.copyWith(asar: value)));

  void setMaghrib(int value) => setPrayers((state.copyWith(maghrib: value)));

  void setIsha(int value) => setPrayers((state.copyWith(isha: value)));

  /// BEHAVIOURS
  void incrementFajr() {
    if (fajr >= 0) {
      setFajr(fajr + 1);
    } else {}
  }

  void incrementZuhr() {
    if (zuhr >= 0) {
      setZuhr(zuhr + 1);
    }
  }

  void incrementAsar() {
    if (asar >= 0) {
      setAsar(asar + 1);
    }
  }

  void incrementMaghrib() {
    if (maghrib >= 0) {
      setMaghrib(maghrib + 1);
    }
  }

  void incrementIsha() {
    if (isha >= 0) {
      setIsha(isha + 1);
    }
  }

  void decrementFajr() {
    if (fajr >= 1) {
      setFajr(fajr - 1);
    }
  }

  void decrementZuhr() {
    if (zuhr >= 1) {
      setZuhr(zuhr - 1);
    }
  }

  void decrementAsar() {
    if (asar >= 1) {
      setAsar(asar - 1);
    }
  }

  void decrementMaghrib() {
    if (maghrib >= 1) {
      setMaghrib(maghrib - 1);
    }
  }

  void decrementIsha() {
    if (isha >= 1) {
      setIsha(isha - 1);
    }
  }

  @override
  Prayers? fromJson(json) => Prayers.fromJson(json);

  @override
  Map<String, dynamic>? toJson(state) => state.toJson();
}
