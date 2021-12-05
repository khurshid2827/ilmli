import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchingModule {
  Positioned? _module;
  TextEditingController _controller;
  SearchingModule(this._controller) {
    _module = Positioned(
      top: 76.h,
      left: 24.w,
      right: 24.w,
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[400]),
          hintText: "Searching",
          fillColor: const Color(0xffF6F6F6),
        ),
      ),
    );
  }
  get module => _module;
}
