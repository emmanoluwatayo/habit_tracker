import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/domain/authentication/i_firebase_auth_facade.dart';
import 'package:habit_tracker/domain/model/custom_error/custom_error.dart';
import 'package:injectable/injectable.dart';

part 'complete_reg_event.dart';
part 'complete_reg_state.dart';
part 'complete_reg_bloc.freezed.dart';

@injectable
class CompleteRegBloc extends Bloc<CompleteRegEvent, CompleteRegState> {
  final IAuthFacade iAuthFacade;

  CompleteRegBloc({required this.iAuthFacade})
      : super(CompleteRegState.initial()) {
    on<CompleteRegistration>(completeReg);
  }

  // sign up
  Future<void> completeReg(
      CompleteRegistration event, Emitter<CompleteRegState> emit) async {
    emit(
      state.copyWith(processingStatus: ProcessingStatus.waiting),
    );

    try {
      await iAuthFacade.completeRegistration(
        address: event.address,
        country: event.country,
        state: event.state,
        city: event.city,
        occupation: event.occupation,
        lga: event.lga,
      );

      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.success,
        ),
      );
    } on CustomError catch (e) {
      if (kDebugMode) {
        print("Registration Error: ${e.errorMsg}");
      }
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: e,
        ),
      );
    }
  }
}
