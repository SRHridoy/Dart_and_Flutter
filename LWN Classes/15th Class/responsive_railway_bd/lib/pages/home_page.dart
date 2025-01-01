import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_railway_bd/widgets/popup_button.dart';
import 'package:responsive_railway_bd/widgets/useful_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        elevation:2,
        shadowColor: Colors.black54,
        leading: Image.asset('assets/images/bangladesh_railway.png'),
        title: Text(
          'Bangladesh\nRailway',
          style: TextStyle(
              fontSize: 16,
              color: UsefulWidgets.usefulColor,
              fontWeight: FontWeight.bold),
        ),actions: [
          PopupButton(),
      ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.w,),
              Text('From',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12.sp),textAlign: TextAlign.start,),
              SizedBox(height: 10.w,),
              UsefulWidgets.textFieldWidget(hintTxt: 'From Station'),
              SizedBox(height: 20.w,),
              Text('To',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12.sp),textAlign: TextAlign.start,),
              SizedBox(height: 10.w,),
              UsefulWidgets.textFieldWidget(hintTxt: 'To Station'),SizedBox(height: 20.w,),
              Text('Date of Journey',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12.sp),textAlign: TextAlign.start,),
              SizedBox(height: 10.w,),
              GestureDetector(
                onTap: () {

                },
                child: UsefulWidgets.textFieldWidget(hintTxt: 'Pick a date'),
              ),SizedBox(height: 20.w,),
              Text('Chosse Class',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12.sp),textAlign: TextAlign.start,),
              SizedBox(height: 10.w,),
              UsefulWidgets.textFieldWidget(hintTxt: 'Choose a Class'),SizedBox(height: 20.w,),

              SizedBox(height: 20.w,),
              UsefulWidgets.searchButton(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/bkashRail.png',width: ScreenUtil().screenWidth,fit: BoxFit.cover,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
