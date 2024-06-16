import 'package:flutter/material.dart';
import 'package:user_app/utils/font_family.dart';

import '../../../../../constant/app_assets.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/default_button.dart';
import '../../../../../widgets/text_widget.dart';
import '../../../app_bar/MyAppBar.dart';
import '../../../home.dart';

class RescheduleAppointmentDetailPage extends StatefulWidget {
  // const RescheduleAppointmentDetailPage({super.key});

  static const String routeName = '/rescheduleAppointmentDetailPage';

  @override
  State<RescheduleAppointmentDetailPage> createState() => _RescheduleAppointmentDetailPageState();
}

class _RescheduleAppointmentDetailPageState extends State<RescheduleAppointmentDetailPage> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate)
      setState(() {
        _selectedDate = pickedDate;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Reschedule Appointment',
        actions: const [],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: AppColor.appBlack,
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12),
                child: Row(
                  children: [
                    Image.asset(
                      AppAssets.consultantProfilePhoto,
                      height: 130,
                      width: 110,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NormalText(
                            text: "Rajendra Rao",
                            size: 14,
                            fontWeight: FontWeight.w700,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          NormalText(
                            text: "Destination Wedding Planner",
                            size: 10,
                            fontWeight: FontWeight.w700,
                            color: AppColor.darkGreyColor,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          NormalText(
                            text: "Jaipur | Rajasthan",
                            size: 10,
                            fontWeight: FontWeight.w700,
                            color: AppColor.darkGreyColor,
                            textOverflow: TextOverflow.ellipsis,
                            softWarp: true,
                            maxLine: 1,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: AppColor.appYellow,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SmallText(
                                    text: "5.0",
                                    fontWeight: FontWeight.w900,
                                    color: AppColor.normalTextColor,
                                    size: 11,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 6,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.textGray,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SmallText(
                                    text: "82 Reviews",
                                    size: 12,
                                    color: AppColor.normalTextColor,
                                  ),
                                ],
                              ),
                              NormalText(
                                text: "10+ Year Exp.",
                                size: 11,
                                fontWeight: FontWeight.w700,
                                textOverflow: TextOverflow.ellipsis,
                                softWarp: true,
                                maxLine: 1,
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Text(
                _selectedDate == null
                    ? 'No date selected!'
                    : 'Selected date: ${_selectedDate!.toLocal()}'.split(' ')[0],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text('Select date'),
              ),

              const SizedBox(height: 20.0),
              Align(
                alignment: Alignment.topLeft,
                child: NormalText(
                  text: "Select Hours",
                  size: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blackColor,
                ),
              ),
              const SizedBox(height: 20.0),
              _gridView(context),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SizedBox(
                  width: double.infinity,
                  child: DefaultButton(
                    key: UniqueKey(),
                    onPressed: () {
                      _showRescheduleSuccessBottomSheet(context);
                    },
                    text: "Confirm Reschedule",
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
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

  void _showRescheduleSuccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(AppAssets.rescheduleSuccessImage),
              const SizedBox(height: 20,),
              NormalText(
                text: "ReScheduling Success!",
                size: 24,
                color: AppColor.textblack,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.Rubik,
              ),
              const SizedBox(height: 15.0),
              NormalText(
                text: "Appointment successfully changed You will \n receved a notification and the consultant will contact you.",
                size: 10,
                color: AppColor.davysGreyColor,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
                fontFamily: FontFamily.Rubik,
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: DefaultButton(
                      key: UniqueKey(),
                      // loadingFlag: provider.isLoading,
                      onPressed: () {},
                      text: "Cancel",
                      fontSize: 14,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      // fixedSizeWidth: 0.9,
                      fontColor: AppColor.blackColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(color: AppColor.graniteGrayColor)),
                      color: AppColor.whiteColor,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: DefaultButton(
                      key: UniqueKey(),
                      // loadingFlag: provider.isLoading,
                      onPressed: () {},
                      text: "View Appointment",
                      fontSize: 14,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      // fixedSizeWidth: 0.9,
                      fontColor: AppColor.whiteColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }


  Widget _gridView(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 80,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            decoration:
                BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: AppColor.davyFrayColor,width: 1)
                ),
            child: Center(
              child: NormalText(
                text: "08:00 AM",
                size: 11,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor,
              ),
            ),
          );
        });
  }
}
