import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manufactruingstore/bloc/register_user_cubit/register_user_cubit.dart';
import 'package:manufactruingstore/bloc/register_user_cubit/register_user_state.dart';
import 'package:manufactruingstore/screens/sign_in/sign_in_screen.dart';
import 'package:manufactruingstore/shared/custom_elevated_button.dart';
import 'package:manufactruingstore/shared/custom_input_field.dart';
import 'package:manufactruingstore/shared/nav.dart';

TextEditingController mobileNumberController = TextEditingController();

class RegisterUserScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterUserCubit(),
      child: BlocConsumer<RegisterUserCubit, RegisterUserStates>(
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
                              Icons.person,
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
                        'إنشاء حساب مستخدم',
                        style: TextStyle(
                          fontSize: 20.sp,
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
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 350.h),
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 25.w,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 15.h, bottom: 20.h),
                                  child: Form(
                                    key: formKey,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomInputField(
                                            controller: mobileNumberController,
                                            hintText: 'الموبايل',
                                            keyboardType: TextInputType.phone,
                                            hintTextSize: 18.sp,
                                            inputTextSize: 20.sp,
                                            validation: (value) {
                                              if (value!.isEmpty) {
                                                return 'يرجي إدخال رقم الهاتف';
                                              }
                                            },
                                          ),
                                          SizedBox(
                                            height: 50.h,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3.w),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'موافق علي الشروط و الأحكام',
                                                  style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Checkbox(
                                                  activeColor:
                                                      Colors.red.shade900,
                                                  value: RegisterUserCubit.get(
                                                          context)
                                                      .agree,
                                                  onChanged: (v) {
                                                    RegisterUserCubit.get(
                                                            context)
                                                        .confirmLicences();
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          CustomElevatedButton(
                                            onPressed:
                                                RegisterUserCubit.get(context)
                                                            .agree &&
                                                        formKey.currentState!
                                                            .validate()
                                                    ? () {
                                                        navigateReplacementTo(
                                                            context,
                                                            const SignInScreen());
                                                      }
                                                    : null,
                                            child: Text(
                                              'التالي',
                                              style: TextStyle(
                                                fontSize: 25.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                            borderRadius: 70.r,
                                            width: 200.w,
                                            height: 60.h,
                                            color:
                                                RegisterUserCubit.get(context)
                                                            .agree &&
                                                        formKey.currentState!
                                                            .validate()
                                                    ? Colors.amber
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
