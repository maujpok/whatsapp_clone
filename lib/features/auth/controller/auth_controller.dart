import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/features/auth/repository/auth_repository.dart';

final authControllerProvider = Provider((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(authRepository: authRepository, ref: ref);
});

class AuthController {
  final AuthRepository authRepository;
  final ProviderRef ref;

  AuthController({required this.authRepository, required this.ref});

  void saveUserInfoToFirestore(
      {required String username,
      required var profileImage,
      required BuildContext context,
      required bool mounted}) async {
    authRepository.saveUserInfoToFirestore(
        username: username,
        profileImage: profileImage,
        ref: ref,
        context: context,
        mounted: mounted);
  }

  Future<void> sendSmsCode(
      {required BuildContext context,
      required String phoneNumber}) async {
    authRepository.sendSmsCode(
        context: context, phoneNumber: phoneNumber);
  }

  void verifySmsCode(
      {required BuildContext context,
      required String smsCodeId,
      required String smsCode,
      required bool mounted}) {
    authRepository.verifySmsCode(
        context: context,
        smsCodeId: smsCodeId,
        smsCode: smsCode,
        mounted: mounted);
  }
}
