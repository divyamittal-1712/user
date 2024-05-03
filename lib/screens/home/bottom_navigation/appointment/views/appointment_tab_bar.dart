import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../app_bar/MyAppBar.dart';

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
      backgroundColor: Colors.grey,
      appBar: MyAppBar(
          title: 'Appointment',
          actions: [],
          backButton: IconButton(
            icon: Icon(Icons.arrow_back),
            color: AppColor.appBlack,
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: Container(
        /*margin: EdgeInsets.all(5),
        width: double.infinity,*/
        // height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: TabBar(
                controller: _tabController,
                tabs: _tab,
                labelColor: Colors.deepOrangeAccent,
                indicatorColor: Colors.deepOrangeAccent,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: TextStyle(fontSize: 18.0),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
