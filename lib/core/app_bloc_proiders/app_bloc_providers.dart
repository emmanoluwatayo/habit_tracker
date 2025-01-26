import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/application/bloc/authentication/auth/auth_bloc.dart';
import 'package:habit_tracker/application/bloc/authentication/complete_reg/complete_reg_bloc.dart';
import 'package:habit_tracker/application/bloc/authentication/forgot_password/forget_password_bloc.dart';
import 'package:habit_tracker/application/bloc/authentication/login/login_bloc.dart';
import 'package:habit_tracker/application/bloc/authentication/profile/profile_bloc.dart';
import 'package:habit_tracker/application/bloc/authentication/registration/registration_bloc.dart';
import 'package:habit_tracker/application/bloc/counter_bloc/counter_bloc.dart';
import 'package:habit_tracker/application/bloc/habits/habits_bloc.dart';
import 'package:habit_tracker/core/dependency_injectables/injection.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(create: (_) => getIt<CounterBloc>()),
        BlocProvider(create: (_) => getIt<AuthenticationBloc>()),
        BlocProvider(create: (_) => getIt<RegistrationBloc>()),
        BlocProvider(create: (_) => getIt<CompleteRegBloc>()),
        BlocProvider(create: (_) => getIt<ProfileBloc>()),
        BlocProvider(create: (_) => getIt<ForgotPasswordBloc>()),
        BlocProvider(create: (_) => getIt<LoginBloc>()),
        BlocProvider(create: (_) => getIt<HabitsBloc>()),
      ];
}
