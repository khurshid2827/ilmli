import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:ilmli_app/responsiveModules/myUtil.dart';
import 'package:ilmli_app/screens/homeScreens/shablons/bottomBarModule.dart';
import 'package:ilmli_app/screens/homeScreens/shablons/searchingModule.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();
  double iconSize = 36.sm;
  double labelSize = 10.sp;
  int currentIndex = 0;
  Color iconColor = const Color(0xFFBDBDBD);
  Function? myFuntion;

  bool isAtCatogories = false;
  bool isAtFavourites = false;
  bool isAtTrendingCatogory = false;

  @override
  void initState() {
    myFuntion = (int value) {
      currentIndex = value;
      setState(() {});
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyUtil(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SearchingModule(textEditingController).module,
          if (currentIndex == 0)
            Positioned(
              top: 144.h,
              child: Container(
                width: 375.w,
                height: 595.h,
                color: Colors.grey.shade100,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      !isAtCatogories
                          ? Column(
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.w),
                                  width: 375.w,
                                  height: 22.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Categories",
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          isAtCatogories = true;
                                          setState(() {});
                                        },
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              color: const Color(0xFF2F80ED)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.w),
                                  width: 375.w,
                                  height: 22.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          isAtCatogories = false;
                                          setState(() {});
                                        },
                                        child: Icon(Icons.arrow_back),
                                      ),
                                      Text(
                                        "Categories",
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      Container()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                      SizedBox(
                        height: 16.h,
                      ),
                      !isAtCatogories
                          ? Container(
                              width: 375.w,
                              height: 211.h,
                              alignment: Alignment.centerLeft,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) => Container(
                                  width: 100.h,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 100.h,
                                        height: 100.h,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 12.w),
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/product.png")),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              10.r,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 16.w),
                                              child: const Text("Stiv Jobs")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: 12,
                              itemBuilder: (context, index) => SizedBox(
                                height: 140.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ...List.generate(
                                      3,
                                      (index) => SizedBox(
                                        width: 100.h,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 100.h,
                                              height: 100.h,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 12.w),
                                              decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/product.png")),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    10.r,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16.w),
                                                    child: const Text(
                                                        "Stiv Jobs")),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      !isAtFavourites
                          ? Column(
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.w),
                                  width: 375.w,
                                  height: 22.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Favourites",
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          isAtCatogories = true;
                                          setState(() {});
                                        },
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              color: const Color(0xFF2F80ED)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.w),
                                  width: 375.w,
                                  height: 22.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          isAtFavourites = false;
                                          setState(() {});
                                        },
                                        child: Icon(Icons.arrow_back),
                                      ),
                                      Text(
                                        "Categories",
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      Container()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                      SizedBox(
                        height: 16.h,
                      ),
                      !isAtFavourites
                          ? Container(
                              width: 375.w,
                              height: 211.h,
                              alignment: Alignment.centerLeft,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) => Container(
                                  width: 200.h,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 200.h,
                                        height: 100.h,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 12.w),
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/product2.png"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              10.r,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 16.w),
                                              child: const Text("Stiv Jobs2")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: 12,
                              itemBuilder: (context, index) => SizedBox(
                                height: 140.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ...List.generate(
                                      3,
                                      (index) => SizedBox(
                                        width: 100.h,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 100.h,
                                              height: 100.h,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 12.w),
                                              decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/product2.png")),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    10.r,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16.w),
                                                    child: const Text(
                                                        "Stiv Jobs")),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          if (currentIndex == 1)
            Positioned(
              top: 144.h,
              child: FutureBuilder(
                  future: getData(),
                  builder: (context, AsyncSnapshot snapshot) {
                    var data = snapshot.data;
                    if (snapshot.hasData) {
                      try {
                        return Container(
                          width: 375.w,
                          height: 595.h,
                          alignment: Alignment.center,
                          color: Colors.grey.shade100,
                          child: Column(
                            children: [
                              Container(
                                width: 375.w,
                                height: 400.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      data['thumbnail']["source"],
                                    ),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              const Text(
                                  "Click on this Link " + "for Wikipedia"),
                              InkWell(
                                onTap: () async {
                                  launchURL("https://en.wikipedia.org/wiki/" +
                                      textEditingController.text);
                                },
                                child: Text(
                                  "https://en.wikipedia.org/wiki/" +
                                      textEditingController.text,
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      } catch (e) {
                        return Container(
                          width: 375.w,
                          height: 595.h,
                          child: Center(
                            child: InkWell(
                              child: Text("Could not found " +
                                  textEditingController.text),
                            ),
                          ),
                        );
                      }
                    } else if (snapshot.hasError) {
                      return Container(
                          width: 375.w,
                          height: 595.h,
                          child: Center(
                            child: Text(textEditingController.text.isNotEmpty
                                ? "Could not found" + textEditingController.text
                                : "Searching ..."),
                          ));
                    } else {
                      return Container(
                          width: 375.w,
                          height: 595.h,
                          child: Center(child: CircularProgressIndicator()));
                    }
                  }),
            ),
          BottomBarModule(
            context,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    myFuntion!(0);
                    setState(() {});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage("assets/icons/home.png"),
                        color: currentIndex == 0
                            ? const Color(0xFF2F80ED)
                            : iconColor,
                        size: iconSize,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: currentIndex == 0
                              ? const Color(0xFF2F80ED)
                              : iconColor,
                          fontSize: labelSize,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    myFuntion!(1);
                    setState(() {});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage("assets/icons/search.png"),
                        color: currentIndex == 1
                            ? const Color(0xFF2F80ED)
                            : iconColor,
                        size: iconSize,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                          color: currentIndex == 1
                              ? const Color(0xFF2F80ED)
                              : iconColor,
                          fontSize: labelSize,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    myFuntion!(2);
                    setState(() {});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage("assets/icons/chats.png"),
                        color: currentIndex == 2
                            ? const Color(0xFF2F80ED)
                            : iconColor,
                        size: iconSize,
                      ),
                      Text(
                        "Chats",
                        style: TextStyle(
                          color: currentIndex == 2
                              ? const Color(0xFF2F80ED)
                              : iconColor,
                          fontSize: labelSize,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    myFuntion!(3);
                    setState(() {});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage("assets/icons/profile.png"),
                        color: currentIndex == 3
                            ? const Color(0xFF2F80ED)
                            : iconColor,
                        size: iconSize,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: currentIndex == 3
                              ? const Color(0xFF2F80ED)
                              : iconColor,
                          fontSize: labelSize,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ).module,
        ],
      ),
    );
  }

  Future getData() async {
    var res = await http.get(Uri.parse(
        "https://en.wikipedia.org/api/rest_v1/page/summary/" +
            textEditingController.text.toString()));

    if (jsonDecode(res.body) != null) return jsonDecode(res.body);
  }

  void launchURL(String url) async {
    if(await canLaunch(url)){
      await launch(url);
    }
  }
}
