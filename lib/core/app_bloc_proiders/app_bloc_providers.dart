import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/core/dependency_injectables/injection.dart';


class AppBlocProviders {
  static get allBlocProviders => [
        // BlocProvider(create: (_) => getIt<AuthenticationBloc>()),
        // BlocProvider(create: (_) => getIt<SignInBloc>()),
        // BlocProvider(create: (_) => getIt<SignUpBloc>()),
        // BlocProvider(create: (_) => getIt<ForgotPasswordBloc>()),
        // BlocProvider(create: (_) => getIt<CompleteRegBloc>()),
        // BlocProvider(create: (_) => getIt<ProfileBloc>()),
        // BlocProvider(create: (_) => getIt<FinanceTrackerBloc>()),
        // BlocProvider(create: (_) => getIt<InventoryBloc>()),
        // BlocProvider(create: (_) => getIt<PatientBloc>()),
        // BlocProvider(create: (_) => getIt<PricingPlansBloc>()),
        // BlocProvider(create: (_) => getIt<PricingSetupBloc>()),
      ];
}
