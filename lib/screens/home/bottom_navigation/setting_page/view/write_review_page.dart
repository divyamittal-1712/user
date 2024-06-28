import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:user_app/screens/home/bottom_navigation/setting_page/view/setting_screen.dart';
import 'package:user_app/utils/font_family.dart';

import '../../../../../constant/app_assets.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/default_button.dart';
import '../../../../../widgets/text_widget.dart';
import '../../../app_bar/MyAppBar.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({super.key});

  static const String routeName = '/writeReviewScreen';

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  String groupValue = "Yes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Write a Review',
        actions: const [],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: AppColor.appBlack,
          onPressed: () {
            Navigator.pushNamed(context, SettingPage.routeName);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage(AppAssets.consultantProfilePhoto),
                        backgroundColor: AppColor.appYellow,
                        maxRadius: 35,
                        minRadius: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    NormalText(
                      text:
                          "How was your experience \n with Mr. Ankush rathore?",
                      size: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColor.blackColor,
                      fontFamily: FontFamily.Rubik,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      maxRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 22,
                      // itemPadding: EdgeInsets.symmetric(horizontal:4.0),
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        size: 8,
                        color: AppColor.appYellow,
                      ),
                      onRatingUpdate: (double value) {},
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              NormalText(
                text: "Write Your Review",
                size: 14,
                fontWeight: FontWeight.w600,
                color: AppColor.textblack,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.appBlack, // Set the border color here
                      width: 0.1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.blackOliveColor,
                      // Set the enabled border color
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.blackOliveColor,
                      // Set the focused border color
                      width: 1.0,
                    ),
                  ),
                  hintText: 'Your Review',
                  filled: true,
                  fillColor: AppColor.whiteColor,
                ),
                maxLines: 4,
                textAlignVertical: TextAlignVertical.top,
              ),
              const SizedBox(
                height: 20,
              ),
              NormalText(
                text: "Would you recommend Mr.Ankush Rathore to your friends?",
                size: 15,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor,
                fontFamily: FontFamily.Rubik,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Radio(
                      value: 'Yes',
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value!;
                        });
                      }),
                  NormalText(
                    text: "Yes",
                    size: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackColor,
                    fontFamily: FontFamily.Rubik,
                  ),
                  const SizedBox(width: 20,),
                  Radio(
                      value: 'No',
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value!;
                        });
                      }),
                  NormalText(
                    text: "No",
                    size: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackColor,
                    fontFamily: FontFamily.Rubik,
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: DefaultButton(
                      key: UniqueKey(),
                      // loadingFlag: provider.isLoading,
                      onPressed: () {},
                      text: "Cancel",
                      fontSize: 15,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      fixedSizeWidth: 0.9,
                      fontColor: AppColor.blackColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(color: AppColor.graniteGrayColor)),
                      color: AppColor.whiteColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: DefaultButton(
                      key: UniqueKey(),
                      // loadingFlag: provider.isLoading,
                      onPressed: () {
                        myReviewDialogBox(context);
                      },
                      text: "Submit",
                      fontSize: 15,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      fixedSizeWidth: 0.9,
                      fontColor: AppColor.whiteColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> myReviewDialogBox(BuildContext context) {
    return showDialog(
      context: context,
      barrierColor: AppColor.whiteColor,
      builder: (context) {
        return Dialog(
          surfaceTintColor: AppColor.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Container(
              height: 450,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.bookAppointmentImage),
                  const SizedBox(
                    height: 25,
                  ),
                  NormalText(
                    text: "Review Successful!",
                    size: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlueGrayColor,
                    fontFamily: FontFamily.Rubik,
                  ),
                  const SizedBox(height: 11.0),
                  NormalText(
                    text: "Your review has been successfully \n submited. thank you very much!",
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.spanishGrayColor,
                    fontFamily: FontFamily.Rubik,
                  ),
                  const SizedBox(height: 30.0),
                  DefaultButton(
                    key: UniqueKey(),
                    // loadingFlag: provider.isLoading,
                    onPressed: () {},
                    text: "OK",
                    fontSize: 18,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                    fixedSizeWidth: 0.6,
                    fontColor: AppColor.whiteColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ],
              )),
        );
      },
    );
  }
}
