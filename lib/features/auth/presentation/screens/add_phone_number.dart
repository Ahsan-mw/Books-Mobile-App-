import 'package:books_mobile_app/core/utils/constants/app_colors.dart';
import 'package:books_mobile_app/core/utils/constants/app_sizes.dart';
import 'package:books_mobile_app/core/utils/constants/devicies/device.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddPhoneNumber extends StatelessWidget {
  const AddPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Phone Number",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: AppSizes.spaceBtwSections),
                Text(
                  "Please enter your phone number, so we can more easily deliver your order",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.textLightGreyColor,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: AppSizes.spaceBtwSections),
                Container(
                  width: double.infinity,
                  child: Text("Phone Number", textAlign: TextAlign.left),
                ),
                SizedBox(height: AppSizes.spaceBtwItems / 2),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.lightGrey,
                    hintText: "(+965) 123 435 7565",
                    hintStyle: TextStyle(color: AppColors.primary),
                    prefixIcon: Icon(Icons.call),
                    prefixIconColor: AppColors.primary,
                  ),
                ),

                SizedBox(height: AppSizes.spaceBtwItems),
              ],
            ),

            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Continue"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
