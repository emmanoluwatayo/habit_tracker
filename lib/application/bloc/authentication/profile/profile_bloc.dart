import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/domain/authentication/i_firebase_auth_facade.dart';
import 'package:habit_tracker/domain/model/custom_error/custom_error.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IAuthFacade iAuthFacade;

  ProfileBloc({required this.iAuthFacade}) : super(ProfileState.initial()) {
    on<FetchProfile>(fetchProfile);
  }

  // New event handler for fetching profile
  Future<void> fetchProfile(
      FetchProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      final profileStream = iAuthFacade.fetchUserDetails();
      await emit.forEach<Map<String, dynamic>>(
        profileStream, // Adjusted to match the expected type
        onData: (profileData) => state.copyWith(
          profileDetails: profileData, // Updating the correct field
          processingStatus: ProcessingStatus.success,
        ),
        onError: (error, stackTrace) {
          final customError = error as CustomError;
          return state.copyWith(
            processingStatus: ProcessingStatus.error,
            error: customError,
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      throw CustomError(
        errorMsg: "An error occurred! ($e)",
        code: e.code,
        plugin: e.plugin,
      );
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: e,
        ),
      );
    }
  }
}
