import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectone/constant.dart';
import 'package:projectone/ui/screen/bottom_sheet.dart';
import 'package:sizer/sizer.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          child: Container(
              height: 15,
              width: 15,
              padding: EdgeInsets.only(left: 20),
              child: IconButton(
                icon: SvgPicture.asset(
                  'assets/svg/drawer.svg',
                  color: Colors.white,
                ),
                onPressed: () => _show(context),
              )),
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
        child: Column(
          //    mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
            ),
            Container(
              width: double.infinity,
              child: Text(
                "Browse",
                style: primaryText,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: Text(
                "Find podcasts that suit to your interest",
                style: regularText,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[150],
                  borderRadius: BorderRadius.circular(5.h),
                  border: Border.all(
                    color: Colors.white,
                    width: 0.2.w,
                  ),
                ),
                width: size.width * 0.9,
                height: size.height * 0.08,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
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
                        hintText: "Type keyword ",
                        hintStyle: regularTextSearch,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
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
                      "Popular",
                      style: regularText,
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
                      "Trending",
                      style: regularText,
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
                      "Recent",
                      style: regularText,
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
                          width: 0.2,
                        ),
                      ),
                    ),
                    Text(
                      "Magic",
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
