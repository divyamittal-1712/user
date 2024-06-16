import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_app/constant/app_assets.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/views/book_appointment_page.dart';
import 'package:user_app/utils/font_family.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/custom_text_filed.dart';
import '../../../../../widgets/default_button.dart';
import '../../../../../widgets/text_widget.dart';
import '../../../app_bar/MyAppBar.dart';

class BookAppointmentDetailPage extends StatelessWidget {
  const BookAppointmentDetailPage({super.key});

  static const String routeName = '/bookAppointmentDetailPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Book Your Appointment',
        actions: const [],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: AppColor.appBlack,
          onPressed: () {
            Navigator.pushNamed(context, BookAppointmentPage.routeName);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NormalText(
                text: "Event Name",
                size: 14,
                fontWeight: FontWeight.w600,
                color: AppColor.textblack,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 58,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: AppColor.borderLightGreyColor),
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Your Event Name",
                      counterText: "",
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              NormalText(
                text: "Conform Duration",
                size: 14,
                fontWeight: FontWeight.w600,
                color: AppColor.textblack,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 58,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: AppColor.borderLightGreyColor),
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "30 Minutes",
                      counterText: "",
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              const SizedBox(height: 22),
              NormalText(
                text: "Event Details",
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
                  hintText: 'Your Event Details',
                  filled: true,
                  fillColor: AppColor.whiteColor,
                ),
                maxLines: 4,
                textAlignVertical: TextAlignVertical.top,
              ),
              const SizedBox(height: 30),
              Center(
                child: DefaultButton(
                  key: UniqueKey(),
                  // loadingFlag: provider.isLoading,
                  onPressed: () {
                    myDialogBox(context);
                  },
                  text: "Submit",
                  fontSize: 16,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w500,
                  fixedSizeWidth: 0.8,
                  fontColor: AppColor.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> myDialogBox(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
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
                    text: "Appointment Book",
                    size: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlueGrayColor,
                    fontFamily: FontFamily.Rubik,
                  ),
                  const SizedBox(height: 11.0),
                  NormalText(
                    text: "Appointment Book",
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
                    text: "Go to Appointment",
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
