import 'package:books_mobile_app/core/utils/theme/theme.dart';
import 'package:books_mobile_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:books_mobile_app/features/onboarding/presentation/screen/onboarding_screen.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:MobileAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
