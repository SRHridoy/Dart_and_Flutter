import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Responsive'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 250.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 200.h,
                    child: ListTile(
                      leading: Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      title: Text(
                        'Bangladesh our mother land',
                        style: TextStyle(fontSize: 10.sp),
                      ),
                      subtitle: Text(
                        'We love our country' * 3,
                        style: TextStyle(fontSize: 7.sp),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 130.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 130.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 130.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 130.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
