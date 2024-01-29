import 'dart:async';

import 'package:beseech/main.dart';

part 'fajr_bloc.freezed.dart';
part 'fajr_bloc.g.dart';

class FajrBloc extends HydratedBloc<FajrEvent, FajrState> {
  FajrBloc() : super(FajrState()) {
    on<_FajrEventDec>(_Dec);
    on<_FajrEventInc>(_Inc);
  }

  FutureOr<void> _Dec(_FajrEventDec event, Emitter<FajrState> emit) {
    emit(state.copyWith(count: state.count - 1));
  }

  FutureOr<void> _Inc(_FajrEventInc event, Emitter<FajrState> emit) {
    emit(state.copyWith(count: state.count + 1));
  }

  @override
  FajrState? fromJson(Map<String, dynamic> json) => FajrState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(FajrState state) => state.toJson();
}

@freezed
class FajrEvent with _$FajrEvent {
  const factory FajrEvent() = _FajrEvent;
  const factory FajrEvent.prayerIncremented() = _FajrEventInc;
  const factory FajrEvent.prayerDecremented() = _FajrEventDec;

  factory FajrEvent.fromJson(Map<String, dynamic> json) =>
      _$FajrEventFromJson(json);
}

@freezed
class FajrState with _$FajrState {
  const factory FajrState({
    @Default(0) final int count,
  }) = _FajrState;

  factory FajrState.fromJson(Map<String, dynamic> json) =>
      _$FajrStateFromJson(json);
}
