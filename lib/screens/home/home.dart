import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:user_app/screens/home/provider/provider.dart';

import '../../constant/app_assets.dart';
import '../../utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: Consumer<HomeProvider>(
          builder: (context, value, child) {
            return Visibility(child: value.pageManage(value.navIndex));
          },
        ),
        bottomNavigationBar:
        Consumer<HomeProvider>(builder: (context, provider, child) {
          return SizedBox(
            height: width*0.158,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Divider(height: 0.6,thickness: 0.6,color: Colors.grey,),
                BottomNavigationBar(
                  elevation: 2,
                  currentIndex: provider.navIndex,
                  selectedItemColor: AppColor.orangeColor,
                  backgroundColor: Colors.white  ,
                  unselectedItemColor: AppColor.textGrey,
                  onTap: (value) {
                    provider.navIndextChange(value);
                    provider.pageManage(value);
                  },
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                      activeIcon:  Icon(Icons.home_outlined,color: AppColor.orangeColor,),
                      label: 'Home',
                      icon: Icon(Icons.home_outlined),
                    ),
                    BottomNavigationBarItem(
                      activeIcon: Icon(Icons.groups,color: AppColor.orangeColor,),
                      label: 'Consultants',
                      icon:  Icon(Icons.groups)
                    ),
                    BottomNavigationBarItem(
                        activeIcon:  Image.asset(AppAssets.liveIcon,color: AppColor.orangeColor,height: 26,width: 45),
                        label: 'Live',
                        icon:Image.asset(AppAssets.liveIcon,height: 26,width: 45,)
                    ),
                    BottomNavigationBarItem(
                      activeIcon:Icon(Icons.calendar_month,color: AppColor.orangeColor,),
                      label: 'Appointments',
                      icon:  Icon(Icons.calendar_month)
                    ),
                    BottomNavigationBarItem(
                      activeIcon: Icon(Icons.settings,color: AppColor.orangeColor,),
                      label: 'Setting',
                      icon: Icon(Icons.settings)
                    ),
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
