import 'package:flutter/material.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultant_detail_page.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultantscreen.dart';
import 'package:user_app/utils/app_colors.dart';
import 'package:user_app/widgets/text_widget.dart';

import '../../../../../constant/app_assets.dart';
import '../../../../../utils/font_family.dart';
import '../../../app_bar/MyAppBar.dart';
import 'consultant_list.dart';

class   TabBarPage extends StatefulWidget {
  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  // const TabBarPage({super.key});
  List<String> items = ["All", "Best", "Wedding", "Visit Now"];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      // appBar: MyAppBar(
      //   title: 'Consultants',
      //   actions: [],
      //   backButton: IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     color: AppColor.appBlack,
      //     onPressed: () => Navigator.of(context).pop(),
      //   ),
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                padding: EdgeInsets.only(top: 40),
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
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
                                  ? BorderRadius.circular(8)
                                  : BorderRadius.circular(8),
                              border: current == index
                                  ? null
                                  : Border.all(
                                      color: AppColor.consultOrange, width: 1)),
                          child: Center(
                            child: Text(
                              items[index],
                              style: TextStyle(
                                fontFamily: FontFamily.Manrope,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: current == index
                                    ? Colors.white
                                    : AppColor.consultOrange,
                              ),
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
          Expanded(
            child: buildAppointmnetCard(context),
          )
        ],
      ),
    );
  }

  Widget buildAppointmnetCard(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 8.0, right: 12.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ConsultantDetailPage.routeName);
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ConsultantDetailPage()));
                  },
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    color: AppColor.whiteColor,
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                image: AssetImage(AppAssets.image),
                                fit: BoxFit
                                    .cover, // You can change this to other fit options as needed
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NormalText(
                                  text: "Pravendra Singh",
                                  size: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.textblack,
                                ),
                                SizedBox(height: 1,),
                                SmallText(
                                  text: "Destination Wedding Planner ",
                                  size: 10,
                                  fontFamily: FontFamily.Rubik,
                                  color: AppColor.sonicSilverColor,
                                ),
                                SizedBox(height: 1,),
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
                                SizedBox(height: 1,),
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
                                      width: 4,
                                      height: 4,
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
                                      width: 38,
                                    ),
                                    Image.asset(AppAssets.top_experience),
                                    SizedBox(width: 4,),
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
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
