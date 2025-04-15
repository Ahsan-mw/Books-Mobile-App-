import 'package:books_mobile_app/core/utils/constants/app_colors.dart';
import 'package:books_mobile_app/core/utils/constants/app_sizes.dart';
import 'package:books_mobile_app/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SucessVerificationScreen extends StatelessWidget {
  const SucessVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Assets.svgSucessPageImg
            ),
            SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            Text("Congratulation!",style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(
              height: AppSizes.spaceBtwItems,

            ),
            Text("your account is complete, please enjoy the best menu from us.",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: AppColors.textLightGreyColor,
              ),
              textAlign: TextAlign.center,),

            SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Continue"),
              ),
            ),


          ],
        ),
      ),

      ),
    );
  }
}
