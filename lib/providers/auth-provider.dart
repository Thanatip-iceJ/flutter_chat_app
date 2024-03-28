import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends StateNotifier<Map<String, dynamic>> {
  AuthNotifier() : super({});

  void login() async {
    print('some');
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, Map<String, dynamic>>(
    (ref) => AuthNotifier());
