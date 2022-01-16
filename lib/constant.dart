



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

BuildContext context;

final primaryText = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 45.sp : 50.sp,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

final regularText = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 12.sp : 15.sp,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);
final regularTextSearch = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 15.sp : 17.sp,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);
final text = GoogleFonts.cairo(
  fontSize: MediaQuery.of(context).orientation == Orientation.portrait ? 20.sp : 25.sp,
  fontWeight: FontWeight.w600,
  color: Colors.black,
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