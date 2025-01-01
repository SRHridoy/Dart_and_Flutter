import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsefulWidgets {
  static Color usefulColor = Color(0xFFdfa065);

  static Widget textFieldWidget({required String hintTxt}) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      child: TextField(
          cursorColor: Colors.black54,
          decoration: hintTxt == 'Pick a date'
              ? InputDecoration(
              suffixIcon: Icon(
                Icons.date_range,
                color: Color(0XFF089d49),
              ),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              hintText: hintTxt,
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1)))
              : InputDecoration(
              contentPadding:
              EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              hintText: hintTxt,
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  BorderSide(color: Colors.blueAccent, width: 1)))),
    );
  }

  static Widget searchButton() {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: () {},
          child: Text(
            'Search trains'.toUpperCase(),
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
