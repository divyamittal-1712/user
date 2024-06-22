import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:user_app/screens/home/bottom_navigation/consultant/views/consultant_detail_page.dart';

import '../../../../../constant/app_assets.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/text_widget.dart';
import '../../../app_bar/MyAppBar.dart';
import '../../../home.dart';

class ReviewAllScreen extends StatelessWidget {
  const ReviewAllScreen({super.key});
  static const String routeName = '/reviewAllPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Satyam Kumar',
        actions: const [],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: AppColor.appBlack,
          onPressed: () {
            Navigator.pushNamed(context, ConsultantDetailPage.routeName);
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
            itemBuilder: (BuildContext context,int index){
          return reviewAll(context);
        }),
      ),
    );
  }

  Widget reviewAll(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
      child: Card(
        color: AppColor.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(AppAssets.consultantProfilePhoto),
                            backgroundColor: AppColor.whiteColor,
                            maxRadius: 35,
                            minRadius: 35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NormalText(
                                  text: "Satyam Kumar",
                                  size: 12,
                                  textOverflow: TextOverflow.ellipsis,
                                  // softWarp: true,
                                  maxLine: 1,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.textblack
                              ),
                              const SizedBox(height: 3,),
                              NormalText(
                                  text: "23 Jan 2024",
                                  size: 9,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.normalTextColor
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        RatingBar.builder(
                          initialRating: 3,
                          maxRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 22,
                          // itemPadding: EdgeInsets.symmetric(horizontal:4.0),
                          itemBuilder: (context,index) =>
                              Icon(
                                Icons.star,
                                size: 12,
                                color: AppColor.appYellow,
                              ), onRatingUpdate: (double value) {  },
                        )
                      ],
                    ),
                    const SizedBox(height: 8,),
                    NormalText(
                        text: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto eligendi magnam laboriosam debitis incidunt aperiam non alias id magni vitae?",
                        size: 10,
                        fontWeight: FontWeight.w500,
                        color: AppColor.normalTextColor
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
