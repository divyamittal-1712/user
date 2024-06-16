import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/views/book_appointment_detail_page.dart';
import 'package:user_app/screens/home/home.dart';

import '../../../../../constant/app_assets.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/default_button.dart';
import '../../../../../widgets/text_widget.dart';
import '../../../app_bar/MyAppBar.dart';

class BookAppointmentPage extends StatefulWidget {
  // BookAppointmentPage({super.key});
  static const String routeName = '/bookAppointmentPage';

  @override
  State<BookAppointmentPage> createState() => _BookAppointmentPageState();
}

class _BookAppointmentPageState extends State<BookAppointmentPage> {
  late String _selectedItem;

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
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NormalText(
                  text: "Select Duration",
                  size: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColor.textblack),
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: AppColor.platinumColor),
                      borderRadius: BorderRadius.circular(3),
                      color: AppColor.whiteColor),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      // value: _selectedItem,
                      hint: const Text('Select an item'),
                      items: <String>['Item 1', 'Item 2', 'Item 3', 'Item 4']
                          .map((String value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList(),
                      isExpanded: true,
                      borderRadius: BorderRadius.circular(5),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      dropdownColor: AppColor.whiteColor,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedItem = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              NormalText(
                  text: "Select Package",
                  size: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColor.textblack),
              const SizedBox(
                height: 15,
              ),
              _selectPackage(AppSvg.chatAppointmentIcon, "Messaging",
                  "Chat with Consultant", AppColor.whiteColor),
              const SizedBox(height: 10,),
              _selectPackage(AppSvg.callWhiteIcon, "Voice Call",
                  "Call with Consultant", AppColor.blackOliveColor),
              const SizedBox(height: 10,),
              _selectPackage(AppSvg.chatAppointmentIcon, "Video Call",
                  "Video Call with Consultant", AppColor.whiteColor),
              const SizedBox(height: 30,),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
                child: Center(
                  child: DefaultButton(
                    key: UniqueKey(),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(BookAppointmentDetailPage.routeName);
                    },
                    text: "Next",
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    fixedSizeWidth: 0.75,
                    fontColor: AppColor.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _selectPackage(
      String assetsName, String title, String description, Color backColor) {
    Color textColor = AppColor.textblack;
    if(backColor == AppColor.blackOliveColor){
      textColor = AppColor.whiteColor;
    }
    return Card(
      color: backColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15),
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  assetsName,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: title,
                      size: 16,
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    NormalText(
                      text: description,
                      size: 11,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                      textOverflow: TextOverflow.ellipsis,
                      softWarp: true,
                      maxLine: 1,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: '₹20',
                      size: 16,
                      color: textColor,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    NormalText(
                      text: "per 30 min",
                      size: 11,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                      textOverflow: TextOverflow.ellipsis,
                      softWarp: true,
                      maxLine: 1,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
