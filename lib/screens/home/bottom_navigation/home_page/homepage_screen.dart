import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_app/screens/home/app_bar/MyAppBar.dart';
import 'package:user_app/screens/home/bottom_navigation/wallet_page/wallet_screen.dart';

import '../../../../utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: '',
        actions: [
          IconButton(
            icon: Icon(Icons.wallet),
            color: AppColor.appBlack,
            onPressed: () => Navigator.of(context)
                .pushReplacementNamed(WalletPage.routeName),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            color: AppColor.appBlack,
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
        backButton: IconButton(
          icon: Icon(Icons.menu),
          color: AppColor.appBlack,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 12.0, right: 12.0, top: 20.0, bottom: 15.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
                  hintText: "Search Consultant...",
                  suffixIcon: Icon(Icons.search),
                  fillColor: AppColor.whiteColor,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
            ),
            // GridPage()
          ],
        ),
      ),
    );
  }
}

class GridPage extends StatelessWidget {
  final List<String> images = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    // Add more images or use dynamic network images
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of columns
        crossAxisSpacing: 10, // Horizontal space between items
        mainAxisSpacing: 10, // Vertical space between items
        childAspectRatio: 1, // Aspect ratio of the items
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Image.network(images[index]);
      },
    );
  }
}
