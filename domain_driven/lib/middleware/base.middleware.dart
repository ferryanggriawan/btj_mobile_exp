import 'package:btj_mobile_exp/modules/auth/store.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

String? authGuard(BuildContext context, GoRouterState state) {
  final String location = state.matchedLocation;

  // 3. Cek Login
  final bool isLoggedIn = statusLoginSignal.value;
  final bool isLoggingIn = location == '/auth';

  if (!isLoggedIn && !isLoggingIn) {
    // Kecuali halaman publik
    if (location != '/auth' && location != '/about') {
      return '/auth';
    }
  }

  // 4. Jika sudah login tapi ke halaman login
  if (isLoggedIn && isLoggingIn) {
    return '/';
  }

  return null;
}
