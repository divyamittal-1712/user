import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:user_app/screens/help/views/faqscreen.dart';

import '../../../../../constant/app_assets.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/text_widget.dart';
import '../../home/app_bar/MyAppBar.dart';
import '../../home/home.dart';
import '../provider/help_provider.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  static const String routeName = '/helpPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Get Help',
        actions: [],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: AppColor.appBlack,
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
      ),
      body: Consumer<HelpProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                      text: 'Browse help categories',
                      size: 16,
                      color: AppColor.appBlack,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Number of columns
                        crossAxisSpacing: 10, // Horizontal space between items
                        mainAxisSpacing: 10, // Vertical space between items
                        childAspectRatio: 1, // Aspect ratio of the items
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: AppColor.midGray.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8, top: 30),
                                child: SvgPicture.asset(
                                  'assets/svg/help_icon.svg',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              NormalText(
                                  text: "Help Category",
                                  size: 10,
                                  fontWeight: FontWeight.w600),
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                      text: 'Frequently Asked Questions',
                      size: 16,
                      color: AppColor.appBlack,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                buildHelpCard(context),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildHelpCard(BuildContext context) {
    return /*ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child:*/
        Card(
            // Adjust the elevation as needed
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(FAQPage.routeName);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: ListTile(
                  title: NormalText(
                    text: "Why are the terms & conditions for TDS offer ??",
                    size: 13,
                    fontWeight: FontWeight.w400,
                  ),

                  trailing: SvgPicture.asset(
                    'assets/svg/right_arrow.svg',
                    width: 20,
                    height: 20,
                  ), // Arrow icon
                ),
              ),
            ));
    /* ),
        );
      },
    );*/
  }
}
