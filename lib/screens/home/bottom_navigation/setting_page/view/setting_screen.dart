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
import '../../../../../widgets/default_button.dart';
import '../../../../../widgets/text_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  static const String routeName = '/settingpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
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
              ListTileText(
                title: "Logout",
                onTap: () {
                  _showLogoutBottomSheet(context);
                },
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
    padding: const EdgeInsets.symmetric(horizontal: 0.0),
    child: Container(
      color: AppColor.shadowBlueColor.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: 130,
                    height: 130,
                    // padding: const EdgeInsets.symmetric(vertical: 12.0),
                    /*decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(4),
                      color: AppColor.blackOliveColor,
                      image: DecorationImage(
                        image: AssetImage(AppAssets.image),
                        fit: BoxFit
                            .cover, // You can change this to other fit options as needed
                      ),
                    ),*/
                    child: CircleAvatar(
                      backgroundImage:
                      AssetImage(AppAssets.consultantProfilePhoto),
                      backgroundColor: AppColor.whiteColor,
                      // maxRadius: 35,
                      // minRadius: 35,
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
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
                ),
              ],
            ),
            /*Container(
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
            ),*/
          ],
        ),
      ),
    ),
  );
}

void _showLogoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            NormalText(
              text: "Logout",
              size: 28,
              color: AppColor.darkBlueGrayColor,
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.Rubik,
            ),
            const SizedBox(height: 15.0),
            Container(
              height: 1, // Thickness of the line
              width: double.infinity, // Make the line take full width
              color: AppColor.gainsBoroColor, // Line color
            ),
            const SizedBox(height: 25.0),
            NormalText(
              text: "Are you sure you want to log out?",
              size: 12,
              color: AppColor.blackColor,
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.Rubik,
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: DefaultButton(
                    key: UniqueKey(),
                    // loadingFlag: provider.isLoading,
                    onPressed: () {},
                    text: "Cancel",
                    fontSize: 15,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                    fixedSizeWidth: 0.9,
                    fontColor: AppColor.blackColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(color: AppColor.graniteGrayColor)),
                    color: AppColor.whiteColor,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DefaultButton(
                    key: UniqueKey(),
                    // loadingFlag: provider.isLoading,
                    onPressed: () {},
                    text: "Yes Logout",
                    fontSize: 15,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                    fixedSizeWidth: 0.9,
                    fontColor: AppColor.whiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}


