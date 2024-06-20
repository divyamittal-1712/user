import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:user_app/constant/app_assets.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultant_review_all_page.dart';
import 'package:user_app/utils/font_family.dart';
import 'package:user_app/widgets/text_widget.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/default_button.dart';
import '../../../app_bar/MyAppBar.dart';
import '../../../home.dart';

class ConsultantDetailPage extends StatelessWidget {
  const ConsultantDetailPage({super.key});

  static const String routeName = '/consultantDetailPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Satyam Kumar',
        actions: const [],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: AppColor.appBlack,
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppAssets.consultantProfilePhoto,
                      width: 120, height: 140, fit: BoxFit.fill),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: 'Mr. Shailendra Shekhawat',
                            size: 15,
                            color: AppColor.textblack,
                            fontWeight: FontWeight.w500,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          NormalText(
                            text: "Destination Wedding Planner",
                            size: 12,
                            fontWeight: FontWeight.w600,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                            color: AppColor.normalTextColor,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          NormalText(
                            text: "Jaipur | Rajasthan",
                            size: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColor.normalTextColor,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                          ),
                          Divider(
                            color: AppColor.darkGreyColor,
                            thickness: 0.5, // Adjust thickness as needed
                          ),
                          NormalText(
                            text: "Wedding planner | Decore Planner",
                            size: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColor.darkGreyColor,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                          ),
                          Divider(
                            color: AppColor.darkGreyColor,
                            thickness: 0.5, // Adjust thickness as needed
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
                                fontWeight: FontWeight.w400,
                                size: 11,
                                color: AppColor.blackColor,
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
                                color: AppColor.normalTextColor,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Center(
                            child: DefaultButton(
                              height: 18,
                              width: 110,
                              key: UniqueKey(),
                              onPressed: () {},
                              text: "Let's Talk",
                              fontSize: 13,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w600,
                              // fixedSizeWidth: 0.5,
                              fontColor: AppColor.whiteColor,
                              color: AppColor.raisinBlackColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Card(
                color: AppColor.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 15),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        children: [
                          NormalText(
                            text: "Experience",
                            size: 13,
                            fontWeight: FontWeight.w600,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                            color: AppColor.raisinBlackColor,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          NormalText(
                            text: "10+ Years",
                            size: 11,
                            fontWeight: FontWeight.w600,
                            color: AppColor.consultOrange,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                          ),
                        ],
                      )),
                      Container(
                        width: 0.3,
                        color: AppColor.darkGreyColor,
                        child: const SizedBox(
                          height: 60,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            NormalText(
                              text: "Clients",
                              size: 13,
                              fontWeight: FontWeight.w600,
                              textOverflow: TextOverflow.ellipsis,
                              softWarp: true,
                              maxLine: 1,
                              color: AppColor.raisinBlackColor,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            NormalText(
                              text: "5000+",
                              size: 11,
                              fontWeight: FontWeight.w600,
                              color: AppColor.consultOrange,
                              textOverflow: TextOverflow.ellipsis,
                              softWarp: true,
                              maxLine: 1,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 0.3,
                        color: AppColor.darkGreyColor,
                        child: const SizedBox(
                          height: 60,
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          NormalText(
                            text: "Ratings",
                            size: 13,
                            fontWeight: FontWeight.w600,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                            color: AppColor.raisinBlackColor,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          NormalText(
                            text: "4.8",
                            size: 11,
                            fontWeight: FontWeight.w600,
                            color: AppColor.consultOrange,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: BigText(
                    text: 'About',
                    size: 16,
                    color: AppColor.textblack,
                    fontWeight: FontWeight.w700,
                    textOverflow: TextOverflow.ellipsis,
                    softWarp: true,
                    maxLine: 1,
                  ),
                ),
              ),
              NormalText(
                text:
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero, iusto? Voluptates obcaecati nesciunt consequuntur. Exercitationem laudantium magni eaque expedita atque velit, temporibus omnis eveniet! Debitis, ipsa. Iste consequatur earum, rerum fuga aspernatur veniam perspiciatis hic eum quaerat adipisci officia pariatur veritatis quibusdam! Molestiae, sunt atque facilis tenetur amet nihil repudiandae! ",
                size: 11,
                fontWeight: FontWeight.w700,
                color: AppColor.auroMetalSaurusColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  width: double.infinity,
                  decoration: DottedDecoration(
                      shape: Shape.box,
                      strokeWidth: 0.3,
                      color: AppColor.darkGreyColor),
                  /*BoxDecoration(
                    border: Border.all(
                      color: AppColor.darkGreyColor, // Set border color
                      width: 0.5,
                      style: BorderStyle.solid// Set border width
                    ),
                  ),*/
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: 'Working Time',
                          size: 16,
                          color: AppColor.textblack,
                          fontWeight: FontWeight.w700,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        NormalText(
                          text: "Monday-Friday, 09:00AM-08:00PM",
                          size: 13,
                          fontWeight: FontWeight.w600,
                          color: AppColor.consultOrange,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NormalText(
                    text: "Reviews",
                    size: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textblack,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context)
                          .pushReplacementNamed(ReviewAllScreen.routeName);
                    },
                    child: NormalText(
                      text: "View All",
                      size: 13,
                      fontWeight: FontWeight.w500,
                      color: AppColor.consultOrange,
                      fontFamily: FontFamily.Rubik,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
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
                      return featureconsult(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget featureconsult(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5),
      child: Card(
        color: AppColor.whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(AppAssets.consultantProfilePhoto),
                        backgroundColor: AppColor.whiteColor,
                        maxRadius: 35,
                        minRadius: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NormalText(
                              text: "Satyam Kumar",
                              size: 12,
                              textOverflow: TextOverflow.ellipsis,
                              // softWarp: true,
                              maxLine: 1,
                              fontWeight: FontWeight.w600,
                              color: AppColor.textblack
                          ),
                          const SizedBox(height: 3,),
                          NormalText(
                              text: "23 Jan 2024",
                              size: 9,
                              fontWeight: FontWeight.w500,
                              color: AppColor.normalTextColor
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8,),
                NormalText(
                    text: "Lorem ipsum dolor sit amet consectetur adipisicing elit. \n Iusto eligendi magnam laboriosam \n debitis incidunt aperiam non alias id magni vitae?",
                    size: 10,
                    fontWeight: FontWeight.w500,
                    color: AppColor.normalTextColor
                ),
              ],
            ),

        ),
      ),
    );
  }
}
