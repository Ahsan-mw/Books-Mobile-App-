import 'package:books_mobile_app/core/utils/constants/app_colors.dart';
import 'package:books_mobile_app/core/utils/constants/app_sizes.dart';
import 'package:books_mobile_app/core/utils/constants/devicies/device.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/elevated_button_theme.dart';
import 'package:books_mobile_app/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
        
            SignUpForm(),
        
            SizedBox(height: AppSizes.spaceBtwSections),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have have an Account?",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.textLightGreyColor,
                  ),
                ),
                SizedBox(width: AppSizes.spaceBtwItems / 6),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, //
                    minimumSize: Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.copyWith(color: AppColors.primary),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.spaceBtwItems),

        
              SizedBox(
                height: AppDeviceUtils.getScreenHeight(context)*0.08,
              ),
        
            Center(
              child: Column(


                children: [
                  Text(
                    "By clicking Register, you agree to our ",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.textLightGreyColor,
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems / 5),
                  Text(
                    "Terms and Data Policy.",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.copyWith(color: AppColors.primary),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppDeviceUtils.getBottomNavigationBarHeight()),
          ],
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _namelController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool hasEightCharacter = false;
  bool hasAtLeastOneNumber = false;
  bool hasAtLeastLowerOrUpperLetter = false;

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _namelController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void validPassword(String val) {
      setState(() {
        hasEightCharacter = val.length == 8;
        hasAtLeastOneNumber = RegExp(r'[0-9]').hasMatch(val);
        hasAtLeastLowerOrUpperLetter = RegExp(r'[A-Z,a-z]').hasMatch(val);
      });
    }

    ;
    bool validEmail(String val) {
      return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
      ).hasMatch(val);
    }

    bool validName(String val) {
      return RegExp(
        r'^[A-Za-z]{2,}(?:\s[A-Za-z]{1,}-?[A-Za-z]{2,})(?:\s[A-Za-z]{1,})?$',
      ).hasMatch(val);
    }

    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.defaultSpace,
        top: AppSizes.defaultSpace,
        right: AppSizes.defaultSpace,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              "Create account and choose favorite menu",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(height: AppSizes.spaceBtwSections),
            Text("Name", style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: AppSizes.spaceBtwItems / 5),
            TextFormField(
              controller: _namelController,
              decoration: InputDecoration(filled: true, hintText: "Your Name"),
              validator: (value) {
                if (value!.trim().isEmpty || !validName(value)) {
                  return "Please enter the Name Correctly ";
                }
                return null;
              },
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            Text("Email", style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: AppSizes.spaceBtwItems / 5),
            // Email filed
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(filled: true, hintText: "Your Email"),
              validator: (value) {
                if (value!.trim().isEmpty || !validEmail(value)) {
                  return "Please enter the email";
                }
                return null;
              },
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            Text("Password", style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: AppSizes.spaceBtwItems / 5),

            // Password filed
            Column(
              children: [
                TextFormField(
                  maxLength: 8,

                  controller: _passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Your Password",

                  ),
                  obscureText: true,
                  onChanged: validPassword,
                  validator: (val){
                    if(val!.trim().isEmpty){
                      return "Please Enter Password";
                    }
                    return null;
                  },
                ),
                SizedBox(height: AppSizes.spaceBtwItems),
                Row(
                  children: [
                    Icon(
                      hasEightCharacter ? Icons.check : Icons.close,
                      color: hasEightCharacter ? Colors.green : Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Minimum 8 characters",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textLightGreyColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Icon(
                      hasAtLeastOneNumber ? Icons.check : Icons.close,
                      color: hasAtLeastOneNumber ? Colors.green : Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "At least 1 number (1-9)",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textLightGreyColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Icon(
                      hasAtLeastLowerOrUpperLetter ? Icons.check : Icons.close,
                      color:
                          hasAtLeastLowerOrUpperLetter
                              ? Colors.green
                              : Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "At least lowercase or uppercase letters",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textLightGreyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: AppSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _formKey.currentState!.validate();
                },
                child: Text("Register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
