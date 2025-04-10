import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingController extends Notifier<int> {
  late PageController controller;

  @override
  int build() {
    controller = PageController();
   controller.addListener((){
     if (controller.page!=null) {
       state=controller.page!.round();

     }
   });

    return 0;
  }


  void nextPage(){
    if (state<=2){
      state++;
      controller.animateToPage(
        state,

      duration: Duration(microseconds: 3000), curve: Curves.easeInBack);


    }
  }





}
