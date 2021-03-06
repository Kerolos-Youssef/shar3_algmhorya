import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manufactruingstore/bloc/register_shop_cubit/register_shop_cubit.dart';
import 'package:manufactruingstore/bloc/register_shop_cubit/register_shop_state.dart';
import 'package:manufactruingstore/screens/shop_account/shop_register_success_screen.dart';

import 'package:manufactruingstore/shared/custom_elevated_button.dart';
import 'package:manufactruingstore/shared/custom_input_field.dart';
import 'package:manufactruingstore/shared/nav.dart';

TextEditingController firstNameController = TextEditingController();
TextEditingController mobileNumberController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController companyNameController = TextEditingController();
TextEditingController companyNumberController = TextEditingController();
TextEditingController countryController = TextEditingController();
TextEditingController governmentController = TextEditingController();
TextEditingController areaController = TextEditingController();
TextEditingController categoryController = TextEditingController();

class RegisterShopScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterShopCubit(),
      child: BlocConsumer<RegisterShopCubit, RegisterShopStates>(
        listener: (context, state) {},
        builder: (context, state) {
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
                          bottomStart: Radius.circular(45.r),
                          bottomEnd: Radius.circular(45.r),
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
                              onPressed: () => navigateBack(context),
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
                    PositionedDirectional(
                      top: 115.h,
                      start: 115.w,
                      end: 115.w,
                      child: Text(
                        '?????????? ???????? ??????',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
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
                              padding: EdgeInsetsDirectional.only(bottom: 30.h),
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
                                      padding: EdgeInsetsDirectional.only(
                                          bottom: 30.h),
                                      child: Form(
                                        key: formKey,
                                        child: Column(
                                          children: [
                                            CustomInputField(
                                              controller: firstNameController,
                                              hintText: '?????????? ??????????',
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                              validation: (value) {
                                                if (value!.isEmpty) {
                                                  return '???????? ?????????? ?????????? ??????????';
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            CustomInputField(
                                              controller:
                                                  mobileNumberController,
                                              hintText: '????????????????',
                                              keyboardType: TextInputType.phone,
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                              validation: (value) {
                                                if (value!.isEmpty) {
                                                  return '???????? ?????????? ?????? ???????????? ??????????????';
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            CustomInputField(
                                              controller: userNameController,
                                              hintText: '?????? ????????????????',
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                              validation: (value) {
                                                if (value!.isEmpty) {
                                                  return '???????? ?????????? ?????? ????????????????';
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            CustomInputField(
                                              controller: passwordController,
                                              hintText: '???????? ????????????',
                                              password: true,
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                              validation: (value) {
                                                if (value!.isEmpty) {
                                                  return '???????? ?????????? ???????? ????????????';
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            CustomInputField(
                                              controller: emailController,
                                              hintText: '??????????????',
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                              validation: (value) {
                                                if (value!.isEmpty) {
                                                  return '???????? ?????????? ??????????????';
                                                } else if ((RegExp(
                                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                        .hasMatch(value)) ==
                                                    false) {
                                                  return '???????? ?????????? ?????????????? ???????????? ??????????';
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            CustomInputField(
                                              controller: companyNameController,
                                              hintText:
                                                  '?????? ???????????? ???? ?????????? ??????????????',
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                              validation: (value) {
                                                if (value!.isEmpty) {
                                                  return '???????? ?????????? ?????? ???????????? ???????????? ?????? ??????????????';
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            CustomInputField(
                                              controller:
                                                  companyNumberController,
                                              hintText: '?????? ?????????? ??????????????',
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                              keyboardType:
                                                  TextInputType.number,
                                              validation: (value) {
                                                if (value!.isEmpty) {
                                                  return '???????? ?????????? ?????? ?????????? ?????????????? ?????????? ????';
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            CustomInputField(
                                              controller: countryController,
                                              hintText: '????????????',
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                              validation: (value) {
                                                if (value!.isEmpty) {
                                                  return '???????? ?????? ?????? ????????????';
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            CustomInputField(
                                              controller: governmentController,
                                              hintText: '????????????????',
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                              validation: (value) {
                                                if (value!.isEmpty) {
                                                  return '???????? ?????? ?????? ????????????????';
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            CustomInputField(
                                              controller: areaController,
                                              hintText: '??????????????',
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                              validation: (value) {
                                                if (value!.isEmpty) {
                                                  return '???????? ?????? ?????? ??????????????';
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            CustomInputField(
                                              controller: categoryController,
                                              hintText: '???????? ???????? ????????????????',
                                              hintTextSize: 18.sp,
                                              inputTextSize: 20.sp,
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.w),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    '?????????? ?????? ???????????? ?? ??????????????',
                                                    style: TextStyle(
                                                      fontSize: 20.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  Checkbox(
                                                    activeColor:
                                                        Colors.red.shade900,
                                                    value:
                                                        RegisterShopCubit.get(
                                                                context)
                                                            .agree,
                                                    onChanged: (v) {
                                                      RegisterShopCubit.get(
                                                              context)
                                                          .confirmLicences();
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 25.h,
                                            ),
                                            CustomElevatedButton(
                                              onPressed:
                                                  RegisterShopCubit.get(context)
                                                              .agree &&
                                                          formKey.currentState!
                                                              .validate()
                                                      ? () {
                                                          navigateReplacementTo(
                                                              context,
                                                              const ShopRegisterSuccessScreen());
                                                        }
                                                      : null,
                                              child: Text(
                                                '?????????? ???????? ????????',
                                                style: TextStyle(
                                                  fontSize: 25.sp,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              borderRadius: 70.r,
                                              width: 200.w,
                                              height: 60.h,
                                              color:
                                                  RegisterShopCubit.get(context)
                                                              .agree &&
                                                          formKey.currentState!
                                                              .validate()
                                                      ? Colors.red.shade900
                                                      : Colors.grey,
                                            ),
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
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
