import 'package:flutter/material.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultantscreen.dart';
import 'package:user_app/utils/app_colors.dart';

import '../../../app_bar/MyAppBar.dart';
import 'consultant_list.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  // const TabBarPage({super.key});
  List<String> items = ["All", "Best", "Wedding", "Visit Now"];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Consultants',
        actions: [],
        backButton: IconButton(
          icon: Icon(Icons.arrow_back),
          color: AppColor.appBlack,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(microseconds: 300),
                            margin: EdgeInsets.all(5),
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                color: current == index
                                    ? Colors.deepOrangeAccent
                                    : Colors.white,
                                borderRadius: current == index
                                    ? BorderRadius.circular(8)
                                    : BorderRadius.circular(8),
                                border: current == index
                                    ? null
                                    : Border.all(
                                        color: Colors.deepOrangeAccent,
                                        width: 1)),
                            child: Center(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                    color: current == index
                                        ? Colors.white
                                        : Colors.deepOrangeAccent),
                              ),
                            ),
                          ),
                        ),
                        /*Visibility(
                            child: Container(
                          width: 5,
                          height: 5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurpleAccent),
                        ))*/
                      ],
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              width: double.infinity,
              // height: 500,
              child: Column(
                children: [
                  Text(items[current])
                  // ConsultantList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
