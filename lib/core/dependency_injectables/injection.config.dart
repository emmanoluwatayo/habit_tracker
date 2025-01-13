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
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;
import 'package:personal_finance_tracker/application/bloc/authentication/auth_bloc.dart'
    as _i846;
import 'package:personal_finance_tracker/application/bloc/complete_registration/complete_reg_bloc.dart'
    as _i50;
import 'package:personal_finance_tracker/application/bloc/finance_tracker/finance_tracker_bloc.dart'
    as _i734;
import 'package:personal_finance_tracker/application/bloc/forgot_password/forgot_password_bloc.dart'
    as _i855;
import 'package:personal_finance_tracker/application/bloc/profile/profile_bloc.dart'
    as _i531;
import 'package:personal_finance_tracker/application/bloc/sign_in/sign_in_bloc.dart'
    as _i4;
import 'package:personal_finance_tracker/application/bloc/sign_up/sign_up_bloc.dart'
    as _i941;
import 'package:personal_finance_tracker/core/utilities/network_info.dart'
    as _i608;
import 'package:personal_finance_tracker/domain/authentication/i_firebase_auth_facade.dart'
    as _i600;
import 'package:personal_finance_tracker/domain/main_function/i_finance_tracker_facade.dart'
    as _i453;
import 'package:personal_finance_tracker/infrastructure/auithentication/firebase_auth_facade.dart'
    as _i270;
import 'package:personal_finance_tracker/infrastructure/core/injectable_module.dart'
    as _i571;
import 'package:personal_finance_tracker/infrastructure/main_function/finance_tracker_facade.dart'
    as _i86;
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
    gh.lazySingleton<_i608.NetworkInfoImpl>(() => injectableModule.networkInfo);
    gh.lazySingleton<_i608.NetworkInfo>(() => _i608.NetworkInfoImpl(
          connectivity: gh<_i895.Connectivity>(),
          internetConnectionChecker: gh<_i973.InternetConnectionChecker>(),
        ));
    gh.lazySingleton<_i453.IFinanceTrackerFacade>(
        () => _i86.FinanceTrackerFacade(
              firebaseAuth: gh<_i59.FirebaseAuth>(),
              googleSignIn: gh<_i116.GoogleSignIn>(),
              firestore: gh<_i974.FirebaseFirestore>(),
            ));
    gh.lazySingleton<_i600.IAuthFacade>(() => _i270.FirebaseAuthFacade(
          firebaseAuth: gh<_i59.FirebaseAuth>(),
          googleSignIn: gh<_i116.GoogleSignIn>(),
          firestore: gh<_i974.FirebaseFirestore>(),
        ));
    gh.factory<_i846.AuthenticationBloc>(
        () => _i846.AuthenticationBloc(iAuthFacade: gh<_i600.IAuthFacade>()));
    gh.factory<_i50.CompleteRegBloc>(
        () => _i50.CompleteRegBloc(iAuthFacade: gh<_i600.IAuthFacade>()));
    gh.factory<_i855.ForgotPasswordBloc>(
        () => _i855.ForgotPasswordBloc(iAuthFacade: gh<_i600.IAuthFacade>()));
    gh.factory<_i531.ProfileBloc>(
        () => _i531.ProfileBloc(iAuthFacade: gh<_i600.IAuthFacade>()));
    gh.factory<_i4.SignInBloc>(
        () => _i4.SignInBloc(iAuthFacade: gh<_i600.IAuthFacade>()));
    gh.factory<_i941.SignUpBloc>(
        () => _i941.SignUpBloc(iAuthFacade: gh<_i600.IAuthFacade>()));
    gh.factory<_i734.FinanceTrackerBloc>(() => _i734.FinanceTrackerBloc(
        iFinanceTrackerFacade: gh<_i453.IFinanceTrackerFacade>()));
    return this;
  }
}

class _$InjectableModule extends _i571.InjectableModule {}
