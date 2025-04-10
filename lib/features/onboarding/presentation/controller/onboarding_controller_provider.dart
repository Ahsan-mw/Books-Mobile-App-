import 'package:books_mobile_app/features/onboarding/presentation/controller/onboarding_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onBoardingProvider =NotifierProvider<OnboardingController,int>(
  OnboardingController.new
);