part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required ProcessingStatus processingStatus,
    required CustomError error,
    required Map<String, dynamic> profileDetails,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
        profileDetails: {},
      );
}
