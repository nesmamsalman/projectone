
// ignore: implementation_imports
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';


class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

final regularText = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 12.sp : 15.sp,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);
final user = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 19.sp : 24.sp,
  fontWeight: FontWeight.w400,
  color: Colors.grey,
);
final userPro = GoogleFonts.cairo(
  fontSize:MediaQuery.of(context).orientation == Orientation.portrait ? 15.sp : 25.sp,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);
final screen = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 35.sp : 35.sp,
  fontWeight: FontWeight.w700,
  color: Colors.black,
);
final regularTextSc = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 10.sp : 15.sp,
  fontWeight: FontWeight.w300,
  color: Colors.grey,
);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            child: Image.network(
              'https://images.unsplash.com/photo-1567016376408-0226e4d0c1ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=8',
              fit: BoxFit.cover,
            ),
            width: double.infinity,
            height: 250,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Container(
                // margin: EdgeInsets.only(left: 5 , right: 5),
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 250
                        : 450,
                child: Text(
                  "minimalism".tr(),
                  style: screen,
                ),
              ),
              Spacer(),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.orange[50],
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange,
                  child: IconButton(
                      color: Colors.black,
                      iconSize: 5,
                      icon: SvgPicture.asset(
                        'assets/svg/arrow.svg',
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // do something
                      }),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "being".tr(),
                  style: user,
                ),
                Text(
                  "the_person".tr(),
                  style: user,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                radius: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    width: 250,
                    child: Text(
                      "Jane Rose ",
                      style: userPro,
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Text(
                      "23.5k Followes ",
                      style: regularTextSc,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          color: Colors.black,
                          iconSize: 25,
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
                        width: 0.2,
                      ),
                    ),
                  ),
                  Text(
                    "popular".tr(),
                    style: userPro,
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          color: Colors.black,
                          iconSize: 25,
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
                        width: 0.2,
                      ),
                    ),
                  ),
                  Text(
                    "trending".tr(),
                    style: userPro,
                  ),
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          color: Colors.black,
                          iconSize: 25,
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
                        width: 0.2,
                      ),
                    ),
                  ),
                  Text(
                    "recent".tr(),
                    style: userPro,
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}
