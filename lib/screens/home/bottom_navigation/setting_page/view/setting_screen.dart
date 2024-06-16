import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:user_app/screens/home/bottom_navigation/setting_page/provider/setting_provider.dart';
import 'package:user_app/screens/home/bottom_navigation/setting_page/view/write_review_page.dart';
import 'package:user_app/utils/font_family.dart';
import '../../../../../constant/app_assets.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/custom_setting_text.dart';
import '../../../../../widgets/text_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  static const String routeName = '/settingpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SettingProvider>(builder: (context, provider, child) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              topLayout(context),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: 'Your Account',
                    size: 11,
                    color: AppColor.philippineGrayColor,
                    fontFamily: FontFamily.Rubik,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ListTileText(
                title: "Favourite",
                onTap: () {},
                leading: AppSvg.favoriteIcon,
              ),
              ListTileText(
                title: "Account Details",
                onTap: () {},
                leading: AppSvg.accountDetailIcon,
              ),
              ListTileText(
                title: "Transaction History",
                onTap: () {},
                leading: AppSvg.transactionHistoryIcon,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: AppColor.borderLightGreyColor,
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: 'Push Notifications',
                    size: 11,
                    color: AppColor.philippineGrayColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.Rubik,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: SvgPicture.asset(AppSvg.notificationIcon_2),
                title: NormalText(
                  text: "Alert Notifications",
                  size: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.outerSpaceColor,
                  fontFamily: FontFamily.Rubik,
                ),
                trailing: Transform.scale(
                  scale: 0.6,
                  alignment: Alignment.centerRight,
                  child: CupertinoSwitch(
                      value: provider.isPrivatAccount,
                      activeColor: AppColor.blueLogin,
                      onChanged: (v) {
                        provider.setSwitchPrivateAccount(v);
                      }),
                ),
                onTap: () {},
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: SvgPicture.asset(AppSvg.appointmentIcon),
                title: NormalText(
                  text: "Appoinments",
                  size: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.outerSpaceColor,
                  fontFamily: FontFamily.Rubik,
                ),
                trailing: Transform.scale(
                  scale: 0.6,
                  alignment: Alignment.centerRight,
                  child: CupertinoSwitch(
                      value: provider.isPrivatAccount,
                      activeColor: AppColor.blueLogin,
                      onChanged: (v) {
                        provider.setSwitchPrivateAccount(v);
                      }),
                ),
                onTap: () {},
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: SvgPicture.asset(AppSvg.messageIcon),
                title: NormalText(
                  text: "Direct Message",
                  size: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.outerSpaceColor,
                  fontFamily: FontFamily.Rubik,
                ),
                trailing: Transform.scale(
                  scale: 0.6,
                  alignment: Alignment.centerRight,
                  child: CupertinoSwitch(
                      value: provider.isPrivatAccount,
                      activeColor: AppColor.blueLogin,
                      onChanged: (v) {
                        provider.setSwitchPrivateAccount(v);
                      }),
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: AppColor.borderLightGreyColor,
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: 'More Info & Support',
                    size: 11,
                    color: AppColor.philippineGrayColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.Rubik,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ListTileText(
                title: "Privacy",
                onTap: () {},
                leading: AppSvg.privacyIcon,
              ),
              ListTileText(
                title: "Security",
                onTap: () {},
                leading: AppSvg.securityIcon,
              ),
              ListTileText(
                title: "Service & Feedback",
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(WriteReviewScreen.routeName);
                },
                leading: AppSvg.serviceFeedbackIcon,
              ),
              ListTileText(
                title: "Help Center",
                onTap: () {},
                leading: AppSvg.helpCenterIcon,
              ),
            ],
          ),
        );
      }),
    );
  }
}

Widget topLayout(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 116,
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(4),
                color: AppColor.blackOliveColor,
                image: DecorationImage(
                  image: AssetImage(AppAssets.image),
                  fit: BoxFit
                      .cover, // You can change this to other fit options as needed
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    NormalText(
                      text: 'Rajendra Rao',
                      size: 16,
                      color: AppColor.blackOliveColor,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(width: 8.0),
                    SvgPicture.asset(AppSvg.editProfileIcon),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      size: 16,
                      color: AppColor.tileTextColor,
                    ),
                    const SizedBox(width: 4.0),
                    NormalText(
                      text: 'rajendraRao@gmail.com',
                      size: 12,
                      color: AppColor.darkBlueGrayColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.Rubik,
                    ),
                  ],
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 16,
                      color: AppColor.tileTextColor,
                    ),
                    const SizedBox(width: 4.0),
                    NormalText(
                      text: '+91 9966332255',
                      size: 12,
                      color: AppColor.darkBlueGrayColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.Rubik,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        Container(
          color: AppColor.lightSilverColor.withOpacity(0.6),
          padding: const EdgeInsets.all(20.0),
          width: double.infinity,
          child: Row(
            children: [
              SvgPicture.asset(AppSvg.walletIcon),
              const SizedBox(width: 8.0),
              NormalText(
                text: '₹999',
                size: 15,
                color: AppColor.auroMetalSaurusColor,
                fontWeight: FontWeight.w600,
              )
            ],
          ),
        ),
      ],
    ),
  );
}


