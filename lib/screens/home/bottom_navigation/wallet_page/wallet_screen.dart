import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/screens/home/app_bar/MyAppBar.dart';
import 'package:user_app/screens/home/bottom_navigation/home_page/homepage_screen.dart';
import '../../../../utils/app_colors.dart';
import '../../../../widgets/custom_wallet_text.dart';
import '../../../../widgets/default_button.dart';
import '../../../../widgets/text_widget.dart';
import '../../home.dart';
import '../setting_page/provider/setting_provider.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);
  static const String routeName = '/walletpage';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Balance',
        actions: [],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: AppColor.appBlack,
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
      ),
      body: Consumer<SettingProvider>(builder: (context, provider, child) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: BigText(
                    text: '₹ 999',
                    size: 28,
                    color: AppColor.appBlack,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: 'Total Balance',
                    size: 14,
                    color: AppColor.darkGreyColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    color: AppColor.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0), // Adjust as desired
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Icon(Icons.wallet_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          profileStatus("Deposite", "₹ 700"),
                          Spacer(),
                          DefaultButton(text: "Recharge", onPressed: () {}),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: 'Quick Actions',
                    size: 14,
                    color: AppColor.appBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 18),
              WalletTileText(
                title: "Transaction History",
                subTitle: "For all balance debit & credit",
                onTap: () {},
                leading: Icons.wallet,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: AppColor.borderLightGreyColor,
                ),
              ),
              WalletTileText(
                title: "Support Center",
                subTitle: "Get support for failed transactions",
                onTap: () {},
                leading: Icons.support_agent,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: AppColor.borderLightGreyColor,
                ),
              ),
              WalletTileText(
                title: "Wallet Withdrawl Help",
                subTitle: "How to add fund in wallet",
                onTap: () {},
                leading: Icons.insert_chart_outlined,
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget profileStatus(String name, String number) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NormalText(
          text: name,
          size: 16,
          color: AppColor.appBlack,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 6,
        ),
        NormalText(
          text: number,
          size: 18,
          color: AppColor.appBlack,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
