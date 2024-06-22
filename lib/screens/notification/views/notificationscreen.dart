import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:user_app/constant/app_assets.dart';

import '../../../utils/app_colors.dart';
import '../../../widgets/text_widget.dart';
import '../../home/app_bar/MyAppBar.dart';
import '../../home/home.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  static const String routeName = '/notificationPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Notifications',
        actions: [],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: AppColor.appBlack,
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(left: 12.0, top: 8.0, right: 12.0),
                child: Card(
                  color: AppColor.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppAssets.cancelIcon),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  NormalText(
                                    text: "Appointment Cancelled!",
                                    size: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  NormalText(
                                    text: "Today | 15:36 PM",
                                    size: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15,),
                        NormalText(
                          text:
                              "You have Successfully canceled your appointment with Mr.Navneet Kumawat on December 24, 2024, 13:00 p.m. 80% of the funds will be Return to your Account.",
                          size: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                ),
              );

          }),
    );
  }
}
