import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manufactruingstore/bloc/login_cubit/login_cubit.dart';
import 'package:manufactruingstore/bloc/login_cubit/login_state.dart';
import 'package:manufactruingstore/screens/shop_account/register_shop_screen.dart';
import 'package:manufactruingstore/screens/user_account/register_user_screen.dart';
import 'package:manufactruingstore/shared/button_element.dart';
import 'package:manufactruingstore/shared/custom_elevated_button.dart';
import 'package:manufactruingstore/shared/nav.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 320.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/appLogo.svg',
                          height: 180.h,
                          width: 180.w,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 51.w,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 145.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                            color: LoginCubit.get(context).userAccount
                                ? Colors.red
                                : Colors.amber,
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(50.r),
                              bottomStart: Radius.circular(50.r),
                            )),
                        child: ButtonElement(
                          icon: Icons.person,
                          text: 'حساب مستخدم',
                          iconSize: 48.w,
                          textColor: LoginCubit.get(context).userAccount
                              ? Colors.white
                              : Colors.black,
                          iconColor: LoginCubit.get(context).userAccount
                              ? Colors.white
                              : Colors.black,
                          onTapped: () {
                            LoginCubit.get(context).changeAccountType(true);
                            navigateTo(context, RegisterUserScreen());
                          },
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 145.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                          color: LoginCubit.get(context).userAccount
                              ? Colors.amber
                              : Colors.red,
                          borderRadius: BorderRadiusDirectional.only(
                            topEnd: Radius.circular(50.r),
                            bottomEnd: Radius.circular(50.r),
                          ),
                        ),
                        child: ButtonElement(
                          icon: Icons.store,
                          iconSize: 45.w,
                          text: 'حساب محل',
                          iconColor: LoginCubit.get(context).userAccount
                              ? Colors.black
                              : Colors.white,
                          textColor: LoginCubit.get(context).userAccount
                              ? Colors.black
                              : Colors.white,
                          onTapped: () {
                            LoginCubit.get(context).changeAccountType(false);
                            navigateTo(context, RegisterShopScreen());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  color: Colors.black45,
                  height: 90.h,
                  width: 290.w,
                  borderRadius: 50.r,
                ),
                SizedBox(
                  height: 25.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'نسيت كلمة المرور',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 112.w,
                        ),
                        child: const Divider(
                          thickness: 1.2,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
