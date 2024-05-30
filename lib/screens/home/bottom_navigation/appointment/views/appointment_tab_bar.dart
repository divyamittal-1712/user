import 'package:flutter/material.dart';
import 'package:user_app/constant/app_assets.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/views/appointment_detail_page.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/font_family.dart';
import '../../../../../widgets/text_widget.dart';
import '../../../app_bar/MyAppBar.dart';
import 'appointement_list_view.dart';

class AppointmentTabBar extends StatefulWidget {
  const AppointmentTabBar({super.key});

  @override
  State<AppointmentTabBar> createState() => _AppointmentTabBarState();
}

class _AppointmentTabBarState extends State<AppointmentTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Tab> _tab = [
    const Tab(
      text: "Upcoming",
    ),
    const Tab(
      text: "Completed",
    ),
    const Tab(
      text: "Cancelled",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      // appBar: MyAppBar(
      //     title: 'Appointment',
      //     actions: [],
      //     backButton: IconButton(
      //       icon: Icon(Icons.arrow_back),
      //       color: AppColor.appBlack,
      //       onPressed: () => Navigator.of(context).pop(),
      //     )),
      body: Column(
        children: [
          TabBar(
              labelStyle: const TextStyle(
                  fontSize: 14,
                  fontFamily: FontFamily.Manrope,
                  fontWeight: FontWeight.w500),
              onTap: (c) {},
              controller: _tabController,
              labelColor: AppColor.consultOrange,
              unselectedLabelColor: AppColor.darkBlueGrayColor,
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: false,
              indicatorWeight: 1,
              padding: EdgeInsets.symmetric(vertical: 32.0),
              indicatorColor: Colors.deepOrangeAccent,
              tabs: _tab),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
              children: [
                // first tab bar view widget
                buildAppointmnetCard(context),
                // second tab bar view widget
                buildAppointmnetCard(context),
                // third tab bar view widget
                buildAppointmnetCard(context),
              ],
            ),
          ),
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
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AppointmentDetailPage.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 59,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(image: AssetImage(AppAssets.image),
                            fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                NormalText(
                                  text: "12-Dec-2024  |",
                                  size: 11,
                                  color: AppColor.sonicSilverColor,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),

                                const SizedBox(
                                  width: 2,
                                ),
                                NormalText(
                                  text: "time",
                                  size: 11,
                                  color: AppColor.sonicSilverColor,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3,bottom: 5),
                              child: NormalText(
                                text: "Lokendra Shekhawat",
                                size: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.normalTextColor,
                              ),
                            ),

                            Row(
                              children: [
                                const Icon(
                                  Icons.call,
                                  size: 12.0,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                NormalText(
                                  text: "Voice Call  |",
                                  size: 11,
                                  color: AppColor.sonicSilverColor,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Icon(
                                  Icons.access_time,
                                  size: 12.0,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                NormalText(
                                  text: "30 min",
                                  size: 11,
                                  color: AppColor.sonicSilverColor,
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: NormalText(
                                text: "₹ 150",
                                size: 13,
                                fontFamily: FontFamily.Rubik,
                                color: AppColor.darkBlueGrayColor,
                              ),
                            ),
                            const Icon(
                              Icons.call,
                              color: Colors.green,
                              size: 26.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.more_vert,
                          size: 20.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 1.0,
                  color: AppColor.borderLightGreyColor,
                ),
              ],
            ),
          );
        });
  }
}
