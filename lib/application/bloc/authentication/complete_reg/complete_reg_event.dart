part of 'complete_reg_bloc.dart';

@freezed
class CompleteRegEvent with _$CompleteRegEvent {
  const factory CompleteRegEvent.completeRegistration({
    required String address,
    required String country,
    required String state,
    required String city,
    required String occupation,
    required String lga,
  }) = CompleteRegistration;
}
