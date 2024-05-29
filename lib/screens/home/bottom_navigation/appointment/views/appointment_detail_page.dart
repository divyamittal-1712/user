import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_app/constant/app_assets.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/default_button.dart';
import '../../../../../widgets/text_widget.dart';
import '../../../app_bar/MyAppBar.dart';
import '../../../home.dart';

class AppointmentDetailPage extends StatelessWidget {
  const AppointmentDetailPage({super.key});

  static const String routeName = '/appointmentDetailPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Consultant Name',
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
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
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
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  width: double.infinity,
                  decoration: DottedDecoration(
                      shape: Shape.box,
                      strokeWidth: 0.3,
                      color: AppColor.darkGreyColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 13),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: 'Scheduled Appointment',
                          size: 16,
                          color: AppColor.textblack,
                          fontWeight: FontWeight.w900,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        NormalText(
                          text: "Today | 22 Dec 2023",
                          size: 13,
                          fontWeight: FontWeight.w900,
                          color: AppColor.consultOrange,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        NormalText(
                          text: "09:00AM-08:00PM (30 Min)",
                          size: 13,
                          fontWeight: FontWeight.w900,
                          color: AppColor.consultOrange,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              BigText(
                text: 'Your Package',
                size: 18,
                color: AppColor.textblack,
                fontWeight: FontWeight.w900,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Card(
                  color: AppColor.whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,top: 15.0,bottom: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SvgPicture.asset(AppSvg.chatAppointmentIcon,
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(
                                  text: 'Messaging',
                                  size: 16,
                                  color: AppColor.textblack,
                                  fontWeight: FontWeight.w900,
                                ),
                                const SizedBox(height: 5,),
                                NormalText(
                                  text: "Chat with Consultant",
                                  size: 11,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.darkGreyColor,
                                  textOverflow: TextOverflow.ellipsis,
                                  softWarp: true,
                                  maxLine: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(
                                  text: '₹20',
                                  size: 16,
                                  color: AppColor.textblack,
                                  fontWeight: FontWeight.w900,
                                ),
                                const SizedBox(height: 5,),
                                NormalText(
                                  text: "per 30 min",
                                  size: 11,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.darkGreyColor,
                                  textOverflow: TextOverflow.ellipsis,
                                  softWarp: true,
                                  maxLine: 1,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: BigText(
                    text: 'About Events',
                    size: 16,
                    color: AppColor.textblack,
                    fontWeight: FontWeight.w900,
                    textOverflow: TextOverflow.ellipsis,
                    softWarp: true,
                    maxLine: 1,
                  ),
                ),
              ),
              NormalText(
                text:
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero, iusto? Voluptates obcaecati nesciunt consequuntur. Exercitationem laudantium magni eaque expedita atque velit, temporibus omnis eveniet! Debitis, ipsa. Iste consequatur earum, rerum fuga aspernatur veniam perspiciatis hic eum quaerat adipisci officia pariatur veritatis quibusdam! Molestiae, sunt atque facilis tenetur amet nihil repudiandae! ",
                size: 12,
                fontWeight: FontWeight.w700,
                color: AppColor.darkGreyColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 12),
                child: DefaultButton(
                  key: UniqueKey(),
                  onPressed: () {},
                  text: "Message (Start at 6:00PM)",
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w900,
                  fixedSizeWidth: 0.9,
                  fontColor: AppColor.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
