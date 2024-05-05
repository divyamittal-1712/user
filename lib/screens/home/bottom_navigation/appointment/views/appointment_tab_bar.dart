import 'package:flutter/material.dart';
import 'package:user_app/constant/app_assets.dart';

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

class _AppointmentTabBarState extends State<AppointmentTabBar> with SingleTickerProviderStateMixin{
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
    const Tab(text: "Upcoming",),
    const Tab(text: "Completed",),
    const Tab(text: "Cancelled",),
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
              labelStyle: TextStyle(fontSize: 18, fontFamily: FontFamily.Manrope, fontWeight: FontWeight.w500),
              onTap: (c) {},
                controller: _tabController,
                labelColor: Colors.deepOrangeAccent,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: false,
                indicatorWeight: 3,
                padding: EdgeInsets.symmetric(vertical: 32.0),
                indicatorColor: Colors.deepOrangeAccent,
                tabs: _tab
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: ScrollPhysics(
                    parent: NeverScrollableScrollPhysics()),
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
    return  ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppAssets.image,
                          height: 80,
                          width: 80,
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                          children: [
                            Row (
                              children: [
                                NormalText(text:"12-Dec-2024",size: 12,fontWeight: FontWeight.w600,),
                                SizedBox(width: 4,),
                                NormalText(text: "|"),
                                SizedBox(width: 4,),
                                NormalText(text: "time",size: 12,fontWeight: FontWeight.w600,)
                              ],
                            ),
                            NormalText(text: "Lokendra Shekhawat",size: 14,fontWeight: FontWeight.w600,),
                            Row(
                              children: [
                                const Icon(
                                  Icons.call,
                                  size: 12.0,
                                ),
                                SizedBox(width: 4,),
                                NormalText(text: "Voice Call",size: 12,),
                                SizedBox(width: 4,),
                                SmallText(text: "|"),
                                SizedBox(width: 4,),
                                const Icon(
                                  Icons.access_time,
                                  size: 12.0,
                                ),
                                SizedBox(width: 4,),
                                NormalText(text: "30 min",size: 12,)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6.0),
                              child: NormalText(text: "Rs. 150", size: 14,fontWeight: FontWeight.w600,),
                            ),
                            const Icon(
                              Icons.call,
                              color: Colors.green,
                              size: 26.0,
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),
                        const Icon(
                          Icons.more_vert,
                          size: 20.0,
                        ),
                      ],
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
            ),
          );
        }

    );

  }

}
