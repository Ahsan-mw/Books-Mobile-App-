import 'package:books_mobile_app/core/utils/constants/app_sizes.dart';
import 'package:books_mobile_app/core/utils/constants/devicies/device.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.search,size: 30,),
            Text("Home"),
            Stack(
              children: [
                Icon(Icons.notifications,size: 30,),
                Positioned(
                  top: 0,
                    right: 4,
                    child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red
                  ),
                ))
              ],
            )
          ],
        ),
      ),

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>Size.fromHeight(
      AppDeviceUtils.getAppBarHeight());
}
