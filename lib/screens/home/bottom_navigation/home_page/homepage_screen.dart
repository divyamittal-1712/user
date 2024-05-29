import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(DrawerPage.routeName);
            },
            child: Icon(
              Icons.menu,
            )),
        actions: [
          IconButton(
              icon: Icon(Icons.wallet),
              color: AppColor.appBlack,
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(WalletPage.routeName);
              }),
          IconButton(
              icon: Icon(Icons.notifications),
              color: AppColor.appBlack,
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(NotificationPage.routeName);
              })
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
                        fontFamily: FontFamily.Manrope,
                        color: AppColor.darkGreyColor),
                    fillColor: AppColor.whiteColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: 40,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns
                    crossAxisSpacing: 10, // Horizontal space between items
                    mainAxisSpacing: 10, // Vertical space between items
                    childAspectRatio: 1, // Aspect ratio of the items
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColor.borderLightGreyColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
                            child: Image.asset(
                              AppAssets.venuePhoto,
                              height: 60,
                              width: 30,
                            ),
                          ),
                          NormalText(
                              text: "Wed Planner",
                              size: 10,
                              fontWeight: FontWeight.w600),
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NormalText(
                    text: "Appointments",
                    size: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  NormalText(
                    text: "View All",
                    size: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.redLogin,
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NormalText(
                    text: "Featured Consultantx",
                    size: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  NormalText(
                    text: "View All",
                    size: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.redLogin,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 130,
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
                    size: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  NormalText(
                    text: "View All",
                    size: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.redLogin,
                  ),
                ],
              ),
              SizedBox(
                height: 100,
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
                              height: 40,
                              decoration: BoxDecoration(
                                  color: current == index
                                      ? Colors.deepOrangeAccent
                                      : Colors.white,
                                  borderRadius: current == index
                                      ? BorderRadius.circular(8)
                                      : BorderRadius.circular(8),
                                  border: current == index
                                      ? null
                                      : Border.all(
                                          color: Colors.deepOrangeAccent,
                                          width: 1)),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                      color: current == index
                                          ? Colors.white
                                          : Colors.deepOrangeAccent),
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
      height: 400,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
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
                      Image.asset(
                        AppAssets.image,
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NormalText(
                            text: "Pravendra Singh",
                            size: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          SmallText(
                            text: "Destination Wedding Planner",
                            size: 12,
                          ),
                          SmallText(
                            text: "Jaipur | Rajasthan ",
                            size: 12,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: AppColor.appYellow,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SmallText(
                                text: "5.0",
                                fontWeight: FontWeight.w600,
                                size: 12,
                              ),
                              SizedBox(
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
                              SizedBox(
                                width: 5,
                              ),
                              SmallText(
                                text: "82 Reviews",
                                size: 12,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              SmallText(
                                text: "10+ Years Exp.",
                                size: 12,
                                fontWeight: FontWeight.w500,
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
            vertical: 16.0, horizontal: 12),
        child: Row(
          children: [
            Image.asset(
              AppAssets.consultantProfilePhoto,
              height: 70,
              width: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NormalText(
                    text: "Rajendra Rao",
                    size: 14,
                    fontWeight: FontWeight.w700,
                    textOverflow: TextOverflow.ellipsis,
                    softWarp: true,
                    maxLine: 1,
                  ),
                  SizedBox(height: 3,),
                  NormalText(
                    text: "Destination Wedding Planner",
                    size: 10,
                    fontWeight: FontWeight.w700,
                    color: AppColor.darkGreyColor,
                    textOverflow: TextOverflow.ellipsis,
                    softWarp: true,
                    maxLine: 1,
                  ),
                  SizedBox(height: 3,),
                  NormalText(
                    text: "Jaipur | Rajasthan",
                    size: 10,
                    fontWeight: FontWeight.w700,
                    color: AppColor.darkGreyColor,
                    textOverflow: TextOverflow.ellipsis,
                    softWarp: true,
                    maxLine: 1,
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
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
                            fontWeight: FontWeight.w900,
                            color: AppColor.normalTextColor,
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
                            size: 12,
                            color: AppColor.normalTextColor,
                          ),
                        ],
                      ),
                      SizedBox(width: 14,),
                      NormalText(
                        text: "10+ Year Exp.",
                        size: 11,
                        fontWeight: FontWeight.w700,
                        textOverflow: TextOverflow.ellipsis,
                        softWarp: true,
                        maxLine: 1,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}
