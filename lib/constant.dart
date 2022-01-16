import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';


final primaryText = GoogleFonts.cairo(
  fontSize: SizerUtil.deviceType == DeviceType.mobile ? 45.sp : 47.sp,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

final regularText = GoogleFonts.cairo(
  fontSize: SizerUtil.deviceType == DeviceType.mobile ? 12.sp : 10.sp,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);
final regularTextSearch = GoogleFonts.cairo(
  fontSize: SizerUtil.deviceType == DeviceType.mobile ? 15.sp : 17.sp,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);
final text = GoogleFonts.cairo(
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);
final user = GoogleFonts.cairo(
  fontSize: 19.0,
  fontWeight: FontWeight.w400,
  color: Colors.grey,
);
final userPro = GoogleFonts.cairo(
  fontSize: 15.0,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);
final screen = GoogleFonts.cairo(
  fontSize: 35.0,
  fontWeight: FontWeight.w700,
  color: Colors.black,
);
final regularTextSc = GoogleFonts.cairo(
  fontSize: SizerUtil.deviceType == DeviceType.mobile ? 10.sp : 7.sp,
  fontWeight: FontWeight.w300,
  color: Colors.grey,
);