import 'package:flutter/material.dart';
import 'package:habit_tracker/core/global_config.dart';
import 'package:habit_tracker/presentation/core/app_widgets.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfig.initConfig();
  runApp(const AppWidget());
}