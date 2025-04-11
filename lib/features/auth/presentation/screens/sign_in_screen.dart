import 'package:books_mobile_app/core/utils/constants/app_colors.dart';
import 'package:books_mobile_app/core/utils/constants/app_sizes.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/elevated_button_theme.dart';
import 'package:books_mobile_app/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left:AppSizes.defaultSpace,top:AppSizes.defaultSpace,
                right:AppSizes.defaultSpace,
              ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Back 👋",
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.left,
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems),
                  Text("Sign in to your account ",style:Theme.of(context).textTheme.titleSmall,),
                  SizedBox(height: AppSizes.spaceBtwSections),
                  Text("Email",style: Theme.of(context).textTheme.bodyLarge,),
                  SizedBox(height: AppSizes.spaceBtwItems/5),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,


                      hintText: "Your Email",

                    ),



                  ),
                  SizedBox(height: AppSizes.spaceBtwItems),
                  Text("Password",style: Theme.of(context).textTheme.bodyLarge,),
                  SizedBox(height: AppSizes.spaceBtwItems/5),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Your Password",
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems),
                  GestureDetector(
                    onTap: (){},
                    child: Text("Forget Password ?",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.primary
                      ),

                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Login"),
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),
                  Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account?",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: AppColors.textLightGreyColor
                      ),),
                      SizedBox(
                        width: AppSizes.spaceBtwItems/6,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero, //
                          minimumSize: Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ), onPressed: () {  },
                        child: Text("Sign Up",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: AppColors.primary
                        ),),)

                    ],
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems),
                ],
              ),
            ),
            SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            Row(
              children: [
                Expanded(child: Divider(thickness: 1, color: AppColors.darkGrey)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text("Or sign in with",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.textLightGreyColor
                  ),),
                ),
                Expanded(child: Divider(thickness: 1, color: AppColors.darkGrey)),
              ],
            ),
            SizedBox(height: AppSizes.spaceBtwSections),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style:
                          AppElevatedButtonTheme.greyElevatedButtonTheme.style,
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          SvgPicture.asset(Assets.iconsGoogleIcon),
                          SizedBox(width: AppSizes.spaceBtwItems),

                          Text("Sign with Google"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style:
                      AppElevatedButtonTheme.greyElevatedButtonTheme.style,
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Assets.iconsAppleIcon),
                          SizedBox(width: AppSizes.spaceBtwItems),
                          Text("Sign with Apple"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
