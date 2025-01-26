// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:habit_tracker/application/bloc/authentication/auth/auth_bloc.dart'
    as _i981;
import 'package:habit_tracker/application/bloc/authentication/complete_reg/complete_reg_bloc.dart'
    as _i135;
import 'package:habit_tracker/application/bloc/authentication/forgot_password/forget_password_bloc.dart'
    as _i697;
import 'package:habit_tracker/application/bloc/authentication/login/login_bloc.dart'
    as _i291;
import 'package:habit_tracker/application/bloc/authentication/profile/profile_bloc.dart'
    as _i988;
import 'package:habit_tracker/application/bloc/authentication/registration/registration_bloc.dart'
    as _i612;
import 'package:habit_tracker/application/bloc/habits/habits_bloc.dart'
    as _i865;
import 'package:habit_tracker/core/utilities/network_info.dart' as _i526;
import 'package:habit_tracker/domain/authentication/i_firebase_auth_facade.dart'
    as _i919;
import 'package:habit_tracker/domain/habits/i_habits_facade.dart' as _i863;
import 'package:habit_tracker/infrastructure/authentication/firebase_auth_facade.dart'
    as _i969;
import 'package:habit_tracker/infrastructure/core/injectable_module.dart'
    as _i365;
import 'package:habit_tracker/infrastructure/habits/habits_facade.dart'
    as _i365;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:uuid/uuid.dart' as _i706;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i116.GoogleSignIn>(() => injectableModule.googleSignIn);
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectableModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(() => injectableModule.firestore);
    gh.lazySingleton<_i457.FirebaseStorage>(
        () => injectableModule.firebaseStorage);
    gh.lazySingleton<_i706.Uuid>(() => injectableModule.uuid);
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => injectableModule.secureStorage);
    gh.lazySingleton<_i895.Connectivity>(() => injectableModule.connectivity);
    gh.lazySingleton<_i973.InternetConnectionChecker>(
        () => injectableModule.internetConnectionChecker);
    gh.lazySingleton<_i526.NetworkInfoImpl>(() => injectableModule.networkInfo);
    gh.lazySingleton<_i863.IHabitFacade>(() => _i365.HabitsFacade(
          firestore: gh<_i974.FirebaseFirestore>(),
          firebaseAuth: gh<_i59.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i526.NetworkInfo>(() => _i526.NetworkInfoImpl(
          connectivity: gh<_i895.Connectivity>(),
          internetConnectionChecker: gh<_i973.InternetConnectionChecker>(),
        ));
    gh.lazySingleton<_i919.IAuthFacade>(() => _i969.FirebaseAuthFacade(
          firebaseAuth: gh<_i59.FirebaseAuth>(),
          googleSignIn: gh<_i116.GoogleSignIn>(),
          firestore: gh<_i974.FirebaseFirestore>(),
        ));
    gh.factory<_i865.HabitsBloc>(
        () => _i865.HabitsBloc(habitFacade: gh<_i863.IHabitFacade>()));
    gh.factory<_i981.AuthenticationBloc>(
        () => _i981.AuthenticationBloc(iAuthFacade: gh<_i919.IAuthFacade>()));
    gh.factory<_i135.CompleteRegBloc>(
        () => _i135.CompleteRegBloc(iAuthFacade: gh<_i919.IAuthFacade>()));
    gh.factory<_i291.LoginBloc>(
        () => _i291.LoginBloc(iAuthFacade: gh<_i919.IAuthFacade>()));
    gh.factory<_i988.ProfileBloc>(
        () => _i988.ProfileBloc(iAuthFacade: gh<_i919.IAuthFacade>()));
    gh.factory<_i612.RegistrationBloc>(
        () => _i612.RegistrationBloc(iAuthFacade: gh<_i919.IAuthFacade>()));
    gh.factory<_i697.ForgotPasswordBloc>(
        () => _i697.ForgotPasswordBloc(iAuthFacade: gh<_i919.IAuthFacade>()));
    return this;
  }
}

class _$InjectableModule extends _i365.InjectableModule {}
