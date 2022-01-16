import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectone/ui/screen/scerrn1.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = GoogleFonts.cairo(
      fontSize: MediaQuery.of(context).orientation == Orientation.portrait
          ? 25.sp
          : 30.sp,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
    final user = GoogleFonts.cairo(
      fontSize: MediaQuery.of(context).orientation == Orientation.portrait
          ? 19.sp
          : 24.sp,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    );
    final userPro = GoogleFonts.cairo(
      fontSize: MediaQuery.of(context).orientation == Orientation.portrait
          ? 15.sp
          : 25.sp,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
    return DraggableScrollableSheet(
      initialChildSize: 0.3,
      maxChildSize: 0.87,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          //  height: 200,
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(MediaQuery.of(context).orientation == Orientation.portrait?40.w:25.w),
                  topRight: Radius.circular(MediaQuery.of(context).orientation == Orientation.portrait?40.w:25.w))),
          child: ListView(
            controller: scrollController,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Center(
                  child: Text(
                "handpicked".tr(),
                style: text,
              )),
              Divider(
                color: Colors.amber,
                thickness: MediaQuery.of(context).orientation == Orientation.portrait?2.w:1.w,
                indent:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 150.w
                        : 160.w,
                endIndent:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 150.w
                        : 160.w,
              ),
              SizedBox(
                height: 2.h,
              ),
              GestureDetector(
                onTap: () {
                  print("object");
                },
                child: Row(
                  children: [
                    SizedBox(
                      width:MediaQuery.of(context).orientation == Orientation.portrait?10.w:12.w,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.w), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(MediaQuery.of(context).orientation == Orientation.portrait?50.w:25.w), // Image radius
                        child: Image.network(
                            'https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80',
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "financial".tr(),
                            style: text,
                          ),
                        ),
                        Container(
                          child: Text(
                            "Natasha Rose",
                            style: user,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen1()),
                  );
                },
                child: Row(
                  children: [
                    SizedBox(
                       width:MediaQuery.of(context).orientation == Orientation.portrait?10.w:12.w,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.w), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(MediaQuery.of(context).orientation == Orientation.portrait?50.w:25.w), // Image radius
                        child: Image.network(
                            'https://images.unsplash.com/photo-1567016376408-0226e4d0c1ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=8',
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "minimalism".tr(),
                            style: text,
                          ),
                        ),
                        Container(
                          child: Text(
                            "Jane Rose",
                            style: user,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              GestureDetector(
                onTap: () {
                  print("object");
                },
                child: Row(
                  children: [
                    SizedBox(
                       width:MediaQuery.of(context).orientation == Orientation.portrait?10.w:12.w,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.w), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(MediaQuery.of(context).orientation == Orientation.portrait?50.w:25.w), // Image radius
                        child: Image.network(
                            'https://images.unsplash.com/photo-1496180727794-817822f65950?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "bisnis".tr(),
                            style: text,
                          ),
                        ),
                        Container(
                          child: Text(
                            "Ronald Godez",
                            style: user,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height:  MediaQuery.of(context).orientation == Orientation.portrait?15.h:15.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "top_authors".tr(),
                  style: text,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                          radius: 35,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Jana Rose",
                          style: userPro,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'),
                          radius: 35,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Robort Dun",
                          style: userPro,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                          ),
                          radius: 35,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Anastacia",
                          style: userPro,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
