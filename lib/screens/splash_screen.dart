import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manufactruingstore/screens/sign_in/sign_in_screen.dart';
import 'package:manufactruingstore/shared/custom_elevated_button.dart';
import 'package:manufactruingstore/shared/nav.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/appLogo.svg',
                height: 250.h,
                width: 250.w,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'شارع الجمهورية',
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'لمعدات ومستلزمات المصانع',
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Text(
                  'أكبر تطبيق للمعدات و مستلزمات المصانع في الوطن العربي',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              CustomElevatedButton(
                onPressed: () {
                  navigateReplacementTo(context, const SignInScreen());
                },
                child: Text(
                  'أبدا التسوق',
                  style: TextStyle(
                    fontSize: 26.sp,
                  ),
                ),
                borderRadius: 35.r,
                height: 60.h,
                width: 200.w,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
