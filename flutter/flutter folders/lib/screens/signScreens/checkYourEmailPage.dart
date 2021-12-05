import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ilmli_app/responsiveModules/myUtil.dart';
import 'package:ilmli_app/screens/signScreens/signInPage.dart';

class CheckEmailPage extends StatefulWidget {
  const CheckEmailPage({Key? key}) : super(key: key);

  @override
  _CheckEmailPageState createState() => _CheckEmailPageState();
}

class _CheckEmailPageState extends State<CheckEmailPage> {
  bool isLock1 = true;
  bool isLock2 = true;
  bool isRemember = false;
  @override
  Widget build(BuildContext context) {
   MyUtil(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 24.w,
            right: 24.w,
            top: 68.h,
            bottom: 97.h,
          ),
          child: Center(
            child: Form(
              child: Column(
                children: [
                  Text(
                    "Sign in",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 72.h,
                  ),
                  Container(
                    height: 58.h,
                    width: 115.w,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 5.w,
                          child: Image(
                            image: const AssetImage(
                              "assets/ilmli.png",
                            ),
                            height: 58.h,
                            width: 105.w,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 2.w,
                          child: Image(
                            image: const AssetImage("assets/i1.png"),
                            width: 11.w,
                            height: 22.h,
                          ),
                        ),
                        Positioned(
                          top: -10.h,
                          right: 3.5.w,
                          child: Image(
                            image: const AssetImage("assets/i1.png"),
                            width: 11.w,
                            height: 44.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 56.h,
                  ),
                  Text(
                    "Check Your Email",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    height: 37.h,
                    width: 299.w,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Ilmli has sent a code to verify the forgotten ",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "password",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    "Enter the verification code",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    padding:EdgeInsets.symmetric(horizontal: 125.w),
                    child: TextField(
                      maxLength: 6,
                      maxLines: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        hintText: "  Code",
                        fillColor: const Color(0xffF6F6F6),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 151.h,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFF2994A),
                      fixedSize: Size(315.w, 52.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
