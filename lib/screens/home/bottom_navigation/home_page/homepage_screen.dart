import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_app/screens/home/app_bar/MyAppBar.dart';
import 'package:user_app/screens/home/bottom_navigation/wallet_page/wallet_screen.dart';
import 'package:user_app/screens/notification/views/notificationscreen.dart';
import 'package:user_app/utils/font_family.dart';
import 'package:user_app/widgets/text_widget.dart';

import '../../../../constant/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../drawer/views/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/homepage';

  @override
  Widget build(BuildContext context) {
    List<String> items = ["All", "Best", "Wedding", "Visit Now"];
    int current = 0;

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(DrawerPage.routeName);
            },
            child: Image.asset(AppAssets.navigationIcon)
        ),
        actions: [
          Flexible(
            child: IconButton(
                icon: Image.asset(AppAssets.walletIcon),
                color: AppColor.appBlack,
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(WalletPage.routeName);
                }),
          ),
          Flexible(
            child: IconButton(
                icon: Image.asset(AppAssets.notificationIcon),
                color: AppColor.appBlack,
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(NotificationPage.routeName);
                }),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 12.0),
                    hintText: "Search Consultant...",
                    suffixIcon: Icon(
                      Icons.search,
                      color: AppColor.darkGreyColor,
                    ),
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.Rubik,
                        color: AppColor.cadetBlueColor),
                    fillColor: AppColor.whiteColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
              const SizedBox(
                height: 15,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: width / 4, // Maximum width of each item
                    crossAxisSpacing: 10.0, // Horizontal space between items
                    mainAxisSpacing: 10.0, // Vertical space between items
                    childAspectRatio: 1.0,
                    // Aspect ratio of the items
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColor.platinumColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0,left: 8,right: 8),
                            child: Image.asset(
                              AppAssets.venuePhoto,
                              height: 28,
                              width: 30,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          NormalText(
                              text: "Venue",
                              size: 9,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w600,

                          ),
                        ],
                      ),
                    );
                  }),
              CarouselSlider.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index, int d) {
                  return sliderTile();
                },
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NormalText(
                    text: "Appointments",
                    size: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.Rubik,
                    color: AppColor.textblack,
                  ),
                  NormalText(
                    text: "View All",
                    size: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColor.consultOrange,
                    fontFamily: FontFamily.Rubik,
                  ),
                ],
              ),
              CarouselSlider.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index, int d) {
                  return sliderTile();
                },
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  viewportFraction: 1.0,
                  enlargeCenterPage: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NormalText(
                    text: "Featured Consultant",
                    size: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  NormalText(
                    text: "View All",
                    size: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColor.consultOrange,
                    fontFamily: FontFamily.Rubik,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 136,
                width: double.infinity,
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    padding: EdgeInsets.zero,
                    itemBuilder: (BuildContext context, int index) {
                      return  featureconsult(context);
                    }),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NormalText(
                    text: "Top Consultant",
                    size: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.Rubik,
                    color: AppColor.textblack,
                  ),
                  NormalText(
                    text: "View All",
                    size: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColor.consultOrange,
                    fontFamily: FontFamily.Rubik,
                  ),
                ],
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: items.length,
                    padding: EdgeInsets.only(top: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              current = index;
                            },
                            child: AnimatedContainer(
                              duration: const Duration(microseconds: 300),
                              margin: EdgeInsets.all(5),
                              width: 80,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: current == index
                                      ? AppColor.consultOrange
                                      : Colors.white,
                                  borderRadius: current == index
                                      ? BorderRadius.circular(5)
                                      : BorderRadius.circular(5),
                                  border: current == index
                                      ? null
                                      : Border.all(
                                          color: AppColor.consultOrange,
                                          width: 1)),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                    fontFamily: FontFamily.Rubik,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: current == index
                                          ? Colors.white
                                          : AppColor.consultOrange),
                                ),
                              ),
                            ),
                          ),
                          /*Visibility(
                            child: Container(
                          width: 5,
                          height: 5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurpleAccent),
                        ))*/
                        ],
                      );
                    }),
              ),
              buildAppointmnetCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget sliderTile() {
    return Center(
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          width: double.infinity,
          height: 140,
          // width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              "https://picsum.photos/200/300?random=1",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAppointmnetCard(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Card(
                color: AppColor.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: AssetImage(AppAssets.image),
                            fit: BoxFit.cover, // You can change this to other fit options as needed
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NormalText(
                            text: "Pravendra Singh",
                            size: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.textblack,
                          ),
                          SmallText(
                            text: "Destination Wedding Planner",
                            size: 10,
                            fontFamily: FontFamily.Rubik,
                            color: AppColor.sonicSilverColor,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 10,
                                color: AppColor.davysGreyColor,
                              ),
                              SmallText(
                                text: "Jaipur | Rajasthan ",
                                size: 10,
                                fontFamily: FontFamily.Rubik,
                                color: AppColor.sonicSilverColor,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: AppColor.appYellow,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SmallText(
                                text: "5.0",
                                fontWeight: FontWeight.w500,
                                size: 11,
                                color: AppColor.sonicSilverColor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.sonicSilverColor,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SmallText(
                                text: "82 Reviews",
                                size: 11,
                                color: AppColor.sonicSilverColor,
                                fontWeight: FontWeight.w500,
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              SmallText(
                                text: "10+ Years Exp.",
                                size: 11,
                                textAlign: TextAlign.end,
                                fontFamily: FontFamily.Rubik,
                                color: AppColor.darkBlueGrayColor,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget featureconsult(BuildContext context){
    return  Card(
      color: AppColor.whiteColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 10.0, horizontal: 12),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(AppAssets.consultantProfilePhoto),
                    backgroundColor: AppColor.whiteColor,
                    maxRadius: 35,
                    minRadius: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NormalText(
                        text: "Rajendra Rao",
                        size: 12,
                        fontWeight: FontWeight.w500,
                        textOverflow: TextOverflow.ellipsis,
                        softWarp: true,
                        maxLine: 1,
                        color: AppColor.textblack
                      ),
                      SizedBox(height: 3,),
                      NormalText(
                        text: "Destination Wedding Planner",
                        size: 10,
                        color: AppColor.spanishGrayColor,
                        textOverflow: TextOverflow.ellipsis,
                        softWarp: true,
                        maxLine: 1,
                        fontFamily: FontFamily.Rubik,
                      ),
                      /*SizedBox(height: 3,),
                      NormalText(
                        text: "Jaipur | Rajasthan",
                        size: 10,
                        fontWeight: FontWeight.w700,
                        color: AppColor.darkGreyColor,
                        textOverflow: TextOverflow.ellipsis,
                        softWarp: true,
                        maxLine: 1,
                      ),*/
                      SizedBox(height: 5,),

                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                SizedBox(height: 30,),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: AppColor.appYellow,
                    ),

                    SmallText(
                      text: "5.0",
                      fontWeight: FontWeight.w500,
                      color: AppColor.sonicSilverColor,
                      size: 11,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.textGray,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SmallText(
                      text: "82 Reviews",
                      size: 11,
                      color: AppColor.sonicSilverColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(width: 14,),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.consultOrange,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 6,bottom: 6),
                  child: NormalText(
                    text: "10+ Year Exp.",
                    size: 8,
                    fontFamily: FontFamily.Rubik,
                    textOverflow: TextOverflow.ellipsis,
                    softWarp: true,
                    color: AppColor.whiteColor,
                    maxLine: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}
