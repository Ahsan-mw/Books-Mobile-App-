import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingController extends Notifier<int> {
  late PageController controller;

  @override
  int build() {
    // Initial state is 0, meaning the first page
    controller = PageController();
    return 0;
  }

  // Method to skip to the last page
  void skipButton() {
    controller.animateToPage(
      2, // Assuming there are 3 pages
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    state = 2; // Update the state to reflect the last page
  }

  // Method to handle navigation when a dot is clicked
  void dotNavigationClick(int index) {
    controller.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    state = index; // Update the state to reflect the current page index
  }

  void nextPage(){
    if (state<2){
      state++;
      controller.animateToPage(
        state,

        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }
// Dispose method to properly dispose of the PageController when no longer needed

}