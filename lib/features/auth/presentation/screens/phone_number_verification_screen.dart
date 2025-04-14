import 'package:books_mobile_app/core/utils/constants/app_colors.dart';
import 'package:books_mobile_app/core/utils/constants/app_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberVerificationScreen extends StatelessWidget {
  const PhoneNumberVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Verification Phone",style: Theme.of(context).textTheme.headlineMedium,),
                  SizedBox(
                    height: AppSizes.spaceBtwItems,

                  ),
                  Text("Please enter the code we just sent to phone number  ",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.textLightGreyColor
                  ),),
                  SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  Text("(+20) 123477092 299",style: Theme.of(context).textTheme.titleLarge,),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 64,
                        height: 68,

                        alignment: Alignment.center,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30
                          ),
                          decoration: InputDecoration(
                            hintText: "0",
                            hintStyle: TextStyle(fontSize: 40, color: Colors.white54),
                            border: InputBorder.none,

                            fillColor: AppColors.lightGrey,
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (val){
                            if(val!.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: AppSizes.spaceBtwItems,
                      ), Container(
                        width: 64,
                        height: 68,

                        alignment: Alignment.center,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30
                          ),
                          decoration: InputDecoration(
                            hintText: "0",
                            hintStyle: TextStyle(fontSize: 40, color: Colors.white54),
                            border: InputBorder.none,

                            fillColor: AppColors.lightGrey,
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (val){
                            if(val!.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: AppSizes.spaceBtwItems,
                      ), Container(
                        width: 64,
                        height: 68,

                        alignment: Alignment.center,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30
                          ),
                          decoration: InputDecoration(
                            hintText: "0",
                            hintStyle: TextStyle(fontSize: 40, color: Colors.white54),
                            border: InputBorder.none,

                            fillColor: AppColors.lightGrey,
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (val){
                            if(val!.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: AppSizes.spaceBtwItems,
                      ), Container(
                        width: 64,
                        height: 68,

                        alignment: Alignment.center,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30
                          ),
                          decoration: InputDecoration(
                            hintText: "0",
                            hintStyle: TextStyle(fontSize: 40, color: Colors.white54),
                            border: InputBorder.none,

                            fillColor: AppColors.lightGrey,
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (val){
                            if(val!.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        ),
                      ),

                    ],
                  ),

                  SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("If you didn’t receive a code?",style: Theme.of(context).textTheme.titleLarge!.copyWith(
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
                        child: Text(" Resend",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: AppColors.primary
                        ),),)

                    ],
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text("Continue")),
                  )

                ],
              ),
            ),
          ),
        ),
      );
  }
}
