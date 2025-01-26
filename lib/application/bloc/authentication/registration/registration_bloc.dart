// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/domain/authentication/i_firebase_auth_facade.dart';
import 'package:habit_tracker/domain/model/custom_error/custom_error.dart';
import 'package:injectable/injectable.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final IAuthFacade iAuthFacade;

  RegistrationBloc({required this.iAuthFacade}) : super(RegistrationState.initial()) {
    on<RegisterWithEmailAndPassword>(register);
  }

  // sign up
  Future<void> register(
    RegisterWithEmailAndPassword event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(
      state.copyWith(processingStatus: ProcessingStatus.waiting),
    );

    try {
      await iAuthFacade.registerWithEmailAndPassword(
        emailAddress: event.emailAddress,
        password: event.password,
        phoneNumber: event.phoneNumber,
        fullName: event.fullName,
      );

      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.success,
        ),
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
