import 'package:get_it/get_it.dart';
import 'package:habit_tracker/core/dependency_injectables/injection.config.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies(String env) => getIt.init(environment: env);
