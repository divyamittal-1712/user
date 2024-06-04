import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/constant/app_assets.dart';
import 'package:user_app/screens/drawer/provider/drawer_provider.dart';
import 'package:user_app/screens/edit_profile/views/editProfileScreen.dart';
import 'package:user_app/screens/home/app_bar/MyAppBar.dart';
import 'package:user_app/screens/home/home.dart';
import '../../../../utils/app_colors.dart';
import '../../../../widgets/custom_setting_text.dart';
import '../../../../widgets/text_widget.dart';
import '../../../widgets/circle_network_image_.dart';
import '../../help/views/helpscreen.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  static const String routeName = '/drawerpage';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: MyAppBar(
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
            child: Icon(Icons.arrow_back_outlined,)),
        actions: [],
      ),
      body: Consumer<DrawerProvider>(
          builder: (context, provider, child) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              CircleNetworkImageWidget(
                imageUrl:   "https://picsum.photos/200/300?random=1",
              ),
              SizedBox(height: 10,),
              BigText(
                text: 'Rajendra Rao',
                size: 16,
                color: AppColor.textblack,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                    decoration: DottedDecoration(shape: Shape.box),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              NormalText(
                                text: 'Wallet Balance',
                                size: 16,
                                color: AppColor.textblack,
                                fontWeight: FontWeight.w700,
                              ),
                              SizedBox(height: 10,),
                              NormalText(
                                text: 'Rs .80',
                                size: 18,
                                color: AppColor.orangeColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              NormalText(
                                text: 'Appoinments',
                                size: 16,
                                color: AppColor.textblack,
                                fontWeight: FontWeight.w700,
                              ),
                              SizedBox(height: 10,),
                              NormalText(
                                text: '05',
                                size: 18,
                                color: AppColor.orangeColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                        ],
                    )
                ),
              ),
              SizedBox(height: 40),
              ListTileText(
                title: "Help",
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(HelpPage.routeName);
                },
                leading: AppSvg.helpCenterIcon,
              ),
              ListTileText(
                title: "Edit Profile",
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(EditProfilePage.routeName);
                },
                leading: AppSvg.accountDetailIcon,
              ),
              ListTileText(
                title: "Wallet",
                onTap: () {},
                leading: AppSvg.walletIcon,
              ),
              ListTileText(
                title: "Terms & Conditions",
                onTap: () {},
                leading: AppSvg.serviceFeedbackIcon,
              ),
              ListTileText(
                title: "Privacy & policy",
                onTap: () {},
                leading: AppSvg.privacyIcon,
              ),
              ListTileText(
                title: "Cancellation & Refund",
                onTap: () {},
                leading: AppSvg.serviceFeedbackIcon,
              ),
              ListTileText(
                title: "Logout",
                onTap: () {},
                leading: AppSvg.appointmentIcon,
              ),
              const SizedBox(height: 10,),
              NormalText(text: "Follow Us",size: 12,),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
