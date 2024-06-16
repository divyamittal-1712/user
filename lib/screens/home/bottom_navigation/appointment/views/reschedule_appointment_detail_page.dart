import 'package:flutter/material.dart';

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
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Select Hours",
                    size: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.appBlack,
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              _gridView(context),
              const SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SizedBox(
                  width: double.infinity,
                  child: DefaultButton(
                    key: UniqueKey(),
                    onPressed: () {},
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



  Widget _gridView(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: width/4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            childAspectRatio: 2.2,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              decoration:
                  BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
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
          }),
    );
  }
}
