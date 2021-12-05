import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBarModule {
  late BuildContext context;
  late Positioned _module;

  late Row myRow;
  BottomBarModule(this.context,this.myRow) {
    _module = Positioned(
      bottom: 0,
      child: SizedBox(
        height: 86.0.h,
        width: 375.w,
        child: Stack(
          children: [
            Positioned(
              top: 12.h,
              child: Container(
                height: 74.h,
                width: 375.w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                     
                      blurRadius: 4.0,
                    ),
                  ],
                ),
                child: myRow,
              ),
            ),
            Positioned(
              bottom: 36.h,
              child: InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 162.5.w),
                  width: 50.w,
                  height: 50.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.r),
                    ),
                    color: const Color(0xFFF2994A),
                  ),
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  get module => _module;
}
