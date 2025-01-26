import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/domain/habits/i_habits_facade.dart';
import 'package:habit_tracker/domain/model/custom_error/custom_error.dart';
import 'package:injectable/injectable.dart';

part 'habits_event.dart';
part 'habits_state.dart';
part 'habits_bloc.freezed.dart';

@injectable
class HabitsBloc extends Bloc<HabitsEvent, HabitsState> {
  final IHabitFacade habitFacade;

  HabitsBloc({required this.habitFacade}) : super(HabitsState.initial()) {
    on<AddHabit>(addHabit);
    on<EditHabit>(editHabit);
    on<DeleteHabit>(deleteHabit);
    on<FetchHabits>(fetchHabits);
    on<MarkHabitAsDone>(markHabitAsDone);
    on<FetchStatistics>(onFetchStatistics);
    on<FetchProgress>(onFetchProgress);
  }

  // Add a new habit
  Future<void> addHabit(
    AddHabit event,
    Emitter<HabitsState> emit,
  ) async {
    emit(
      state.copyWith(
        processingStatus: ProcessingStatus.waiting,
      ),
    );

    try {
      await habitFacade.addHabit(
        title: event.title,
        frequency: event.frequency,
        time: event.time,
        days: event.days,
      );
      emit(state.copyWith(processingStatus: ProcessingStatus.success));
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: e,
        ),
      );
    }
  }

  // Edit an existing habit
  Future<void> editHabit(
    EditHabit event,
    Emitter<HabitsState> emit,
  ) async {
    emit(
      state.copyWith(
        processingStatus: ProcessingStatus.waiting,
      ),
    );

    try {
      await habitFacade.editHabit(
        habitId: event.habitId,
        title: event.title,
        frequency: event.frequency,
        time: event.time,
        days: event.days,
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

  // Delete a habit
  Future<void> deleteHabit(
    DeleteHabit event,
    Emitter<HabitsState> emit,
  ) async {
    emit(
      state.copyWith(
        processingStatus: ProcessingStatus.waiting,
      ),
    );

    try {
      await habitFacade.deleteHabit(event.habitId);
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

  // Fetch all habits
  Future<void> fetchHabits(
    FetchHabits event,
    Emitter<HabitsState> emit,
  ) async {
    emit(
      state.copyWith(
        processingStatus: ProcessingStatus.waiting,
      ),
    );

    try {
      final habitsStream = habitFacade.fetchHabits();
      await emit.forEach<List<Map<String, dynamic>>>(habitsStream,
          onData: (habitsList) {
        return state.copyWith(
          habitsList: habitsList,
          processingStatus: ProcessingStatus.success,
        );
      }, onError: (error, stackTrace) {
        final customError = error as CustomError;
        return state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: customError,
        );
      });
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: e,
        ),
      );
    }
  }

  // Mark a habit as done
  Future<void> markHabitAsDone(
    MarkHabitAsDone event,
    Emitter<HabitsState> emit,
  ) async {
    emit(
      state.copyWith(
        processingStatus: ProcessingStatus.waiting,
      ),
    );

    try {
      await habitFacade.markHabitAsDone(
        event.habitId,
        event.completedDate,
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

  // Fetch progress
  Future<void> onFetchProgress(
    FetchProgress event,
    Emitter<HabitsState> emit,
  ) async {
    emit(
      state.copyWith(
        processingStatus: ProcessingStatus.waiting,
      ),
    );

    try {
      final progressData = await habitFacade.fetchProgress(
        isWeekly: event.isWeekly,
      );
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.success,
          progress: progressData['progress'] as Map<String, int>,
          labels: progressData['labels'] as List<String>,
        ),
      );
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: CustomError(
          errorMsg: e.errorMsg,
          code: e.code,
          plugin: e.plugin,
        ),
      ));
    }
  }

  // Fetch statistics
  Future<void> onFetchStatistics(
    FetchStatistics event,
    Emitter<HabitsState> emit,
  ) async {
    emit(
      state.copyWith(
        processingStatus: ProcessingStatus.waiting,
      ),
    );

    try {
      final statisticsData = await habitFacade.fetchStatistics();
      emit(state.copyWith(
        processingStatus: ProcessingStatus.success,
        statistics: statisticsData,
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: CustomError(
          errorMsg: e.errorMsg,
          code: e.code,
          plugin: e.plugin,
        ),
      ));
    }
  }
}
