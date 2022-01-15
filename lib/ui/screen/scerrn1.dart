import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:projectone/constant.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
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
                width: 250,
                child: Text(
                  "Minimalism Lifestyle",
                  style: screen,
                ),
              ),
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
                  "Being the savages bowsman, that is.",
                  style: user,
                ),
                Text(
                  "the person who pulled the bow-oar in his boat ",
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
                        width:0.2,
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
                        width:0.2,
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
                        width:0.2,
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
            ],
          )
        ],
      ),
    );
  }
}
