import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ilmli_app/responsiveModules/myUtil.dart';
import 'package:ilmli_app/screens/homeScreens/homePage.dart';
import 'package:ilmli_app/screens/signScreens/resetPasswordPage.dart';
import 'package:ilmli_app/screens/signScreens/signUpPage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isLock = true;
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
                    "Welcome!",
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
                    width: 247.w,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Enter your Phone number or Email",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "address for Sign in",
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
                    height: 72.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      hintText: "Login",
                      fillColor: const Color(0xffF6F6F6),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Image(
                          image: const AssetImage(
                            "assets/person.png",
                          ),
                          width: 52.w,
                          height: 52.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(6),
                        child: IconButton(
                          onPressed: () {
                            isLock = !isLock;
                            setState(() {});
                          },
                          icon: Icon(
                            isLock ? Icons.visibility : Icons.visibility_off,
                            size: 28.sm,
                          ),
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Image(
                          image: const AssetImage(
                            "assets/lock.png",
                          ),
                          width: 52.w,
                          height: 52.h,
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      hintText: "Password",
                      fillColor: const Color(0xffF6F6F6),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            isRemember = !isRemember;
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 22.w,
                                height: 22.h,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(2),
                                child: isRemember
                                    ? Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 16.sm,
                                      )
                                    : Container(),
                                decoration: BoxDecoration(
                                  color: isRemember
                                      ? const Color(0xFF2F80ED)
                                      : Colors.grey.shade300,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6.r),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text(
                                "Remember me",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ResetPasswordPage()));
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: const Color(0xFF2F80ED),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 66.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFF2994A),
                      fixedSize: Size(315.w, 52.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    child: Text(
                      "Sign in",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFF2F80ED),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
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
