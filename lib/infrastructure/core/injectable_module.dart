import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:habit_tracker/core/utilities/network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:uuid/uuid.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;

  @lazySingleton
  Uuid get uuid => const Uuid();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  @lazySingleton
  NetworkInfoImpl get networkInfo => NetworkInfoImpl(
        connectivity: connectivity,
        internetConnectionChecker: internetConnectionChecker,
      );

  // @lazySingleton
  // UploadService get uploadService =>
  //     UploadService(firebaseStorage: firebaseStorage);
}
