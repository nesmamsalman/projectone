
// ignore: implementation_imports
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectone/ui/screen/bottom_sheet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MainWidget extends StatelessWidget {
  const MainWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final primaryText = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 50.sp : 55.sp,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

final regularText = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 20.sp : 25.sp,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);
final regularTextSearch = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 14.sp : 20.sp,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);
   
    void _show(BuildContext ctx) {
      showModalBottomSheet(
        barrierColor: Colors.black.withOpacity(0),
        isScrollControlled: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        context: ctx,
        builder: (ctx) => SizedBox.expand(
          child: BottomSheetWidget(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/svg/drawer.svg',
              color: Colors.white,
              width:  MediaQuery.of(context).orientation == Orientation.portrait ? 15.w : 17.w,
            ),
            onPressed: () => _show(context),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
             //   mainAxisAlignment: MainAxisAlignment.start,
                       //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             MediaQuery.of(context).orientation == Orientation.portrait?SizedBox(height: 100.h,) : SizedBox(height: 0.h,),
            Text(
              "browse".tr(),
              style: primaryText,
              textAlign: TextAlign.center,
            ),
           MediaQuery.of(context).orientation == Orientation.portrait?SizedBox(height: 10.h,): SizedBox(height: 0.h,),
            Text(
               "text_find".tr(),
              style: regularText,
              textAlign: TextAlign.center,
            ),
           MediaQuery.of(context).orientation == Orientation.portrait?SizedBox(height: 10.h,) : SizedBox(height: 2.h,),
            Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).orientation == Orientation.portrait ?2.w : 10.w , right: MediaQuery.of(context).orientation == Orientation.portrait ?2.w :10.w),
              // width: double.infinity,
              child: Container(
             
                decoration: BoxDecoration(
                  
                  color: Colors.grey[150],
                  borderRadius: BorderRadius.circular(30.h),
                  border: Border.all(
                    color: Colors.white,
                    width: 0.9.w,
                  ),
                ),
               
                height: MediaQuery.of(context).orientation == Orientation.portrait ?50.h:60.h,
                child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).orientation == Orientation.portrait ?10.w : 10.w ,vertical: MediaQuery.of(context).orientation == Orientation.portrait ?5.h : 0.9.h,),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                            primary: Colors.blue,
                          ),
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      // textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "type_keyword".tr(),
                        hintStyle: regularTextSearch,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
                      MediaQuery.of(context).orientation == Orientation.portrait?SizedBox(height: 50.h,) : SizedBox(height: 5.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius:  MediaQuery.of(context).orientation == Orientation.portrait?30.w:18.w,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            color: Colors.black,
                            iconSize: MediaQuery.of(context).orientation == Orientation.portrait? 10.w:20.w,
                            icon: SvgPicture.asset(
                              'assets/svg/star.svg',
                              color: Colors.amber,
                            ),
                            onPressed: () {
                              // do something
                            }),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.amber,
                          width: MediaQuery.of(context).orientation == Orientation.portrait?1.w:0.2.w,
                        ),
                      ),
                    ),
                    Text(
                      "popular".tr(),
                      style: regularText,
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).orientation == Orientation.portrait? 15.w : 15.w,                ),
                Column(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).orientation == Orientation.portrait?30.w:18.w,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            color: Colors.black,
                            iconSize:MediaQuery.of(context).orientation == Orientation.portrait? 10.w:20.w,
                            icon: SvgPicture.asset(
                              'assets/svg/trending.svg',
                              color: Colors.amber,
                            ),
                            onPressed: () {
                              // do something
                            }),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.amber,
                          width:MediaQuery.of(context).orientation == Orientation.portrait?1.w:0.2.w,
                        ),
                      ),
                    ),
                    Text(
                      "trending".tr(),
                      style: regularText,
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).orientation == Orientation.portrait? 15.w : 15.w),
                Column(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).orientation == Orientation.portrait?30.w:18.w,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            color: Colors.black,
                            iconSize: MediaQuery.of(context).orientation == Orientation.portrait? 10.w:20.w,
                            icon: SvgPicture.asset(
                              'assets/svg/hour.svg',
                              color: Colors.amber,
                            ),
                            onPressed: () {
                              // do something
                            }),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.amber,
                          width:MediaQuery.of(context).orientation == Orientation.portrait?1.w:0.2.w,
                        ),
                      ),
                    ),
                    Text(
                      "recent".tr(),
                      style: regularText,
                    ),
                  ],
                ),
                SizedBox(
                   width: MediaQuery.of(context).orientation == Orientation.portrait? 15.w : 15.w,
                ),
                Column(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).orientation == Orientation.portrait?30.w:18.w,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            color: Colors.black,
                            iconSize: MediaQuery.of(context).orientation == Orientation.portrait? 10.w:20.w,
                            icon: SvgPicture.asset(
                              'assets/svg/charge.svg',
                              color: Colors.amber,
                            ),
                            onPressed: () {
                              // do something
                            }),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.amber,
                          width: MediaQuery.of(context).orientation == Orientation.portrait?1.w:0.2.w,
                        ),
                      ),
                    ),
                    Text(
                      "magic".tr(),
                      style: regularText,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
