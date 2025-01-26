import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthFacade {
  Future<void> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required String phoneNumber,
    required String fullName,
  });

  Future<void> completeRegistration({
    required String address,
    required String country,
    required String state,
    required String city,
    required String occupation,
    required String lga,
  });

  Stream<User?> get user;

  Future<void> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<void> forgotPassword({
    required String emailAddress,
  });

  Future<void> signOut();

  Stream<Map<String, dynamic>> fetchUserDetails();

  Future<void> uploadProfileImage({
    final File? imageFile,
    final Uint8List? imageBytes,
  });
}
