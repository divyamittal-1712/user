import 'package:flutter/material.dart';
import 'package:user_app/screens/help/views/helpscreen.dart';

import '../../../utils/app_colors.dart';
import '../../../widgets/text_widget.dart';
import '../../home/app_bar/MyAppBar.dart';
import '../../home/home.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  static const String routeName = '/faqPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lightGray,
        appBar: MyAppBar(
          title: 'FAQs',
          actions: [],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: AppColor.appBlack,
            onPressed: () {
              Navigator.pushNamed(context, HelpPage.routeName);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                BigText(text: "Why are the terms & conditions for TDS offer ??",
                  size: 18,
                  fontWeight: FontWeight.w800,),
                SizedBox(height: 15,),
                Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                    size: 12,
                    fontWeight: FontWeight.w200,),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
