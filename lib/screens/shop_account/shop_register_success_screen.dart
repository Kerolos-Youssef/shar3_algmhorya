import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manufactruingstore/screens/sign_in/sign_in_screen.dart';
import 'package:manufactruingstore/shared/nav.dart';

class ShopRegisterSuccessScreen extends StatelessWidget {
  const ShopRegisterSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: 250.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(50.r),
                    bottomEnd: Radius.circular(50.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 85.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () => navigateReplacementTo(
                            context, const SignInScreen()),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black87,
                          size: 45.w,
                        ),
                      ),
                      Icon(
                        Icons.store,
                        color: Colors.black87,
                        size: 65.w,
                      ),
                      Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.black87,
                        size: 55.w,
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 170.h,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 150.h),
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.w,
                            ),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 30.h,
                                  horizontal: 2.w,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'تم التسجيل بنجاح',
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 28.h,
                                    ),
                                    Text(
                                      'بأنتظار تفعيل الحساب من جانب',
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'إدارة تطبيق',
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'شارع الجمهورية',
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/register.svg'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
