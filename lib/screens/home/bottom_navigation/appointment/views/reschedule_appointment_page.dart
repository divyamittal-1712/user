import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/provider/reshedule_appointment_provider.dart';
import 'package:user_app/screens/home/bottom_navigation/appointment/views/reschedule_appointment_detail_page.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../widgets/default_button.dart';
import '../../../../../widgets/text_widget.dart';
import '../../../app_bar/MyAppBar.dart';
import '../../../home.dart';

class RescheduleAppointmentPage extends StatefulWidget {
  RescheduleAppointmentPage({super.key});

  static const String routeName = '/rescheduleAppointmentPage';

  @override
  State<RescheduleAppointmentPage> createState() =>
      _RescheduleAppointmentPageState();
}

class _RescheduleAppointmentPageState extends State<RescheduleAppointmentPage> {
  String? _selectedReason;

  TextEditingController _reasonController = TextEditingController();

  String _selectedOption = 'I\'m having a schedule clash';

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
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalText(
                  text: "Reason For Rescheduled",
                  size: 14,
                  color: AppColor.blackColor,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 12),

                RadioListTile<String>(
                  visualDensity: const VisualDensity(
                      horizontal: -4, vertical: -4),
                  title: NormalText(
                    text: "I\'m having a schedule clash",
                    size: 13,
                    color: AppColor.normalTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                  value: 'I\'m having a schedule clash',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  visualDensity: const VisualDensity(
                      horizontal: -4, vertical: -4),
                  title: NormalText(
                    text: "I\'m not available on schedule",
                    size: 13,
                    color: AppColor.normalTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                  value: 'I\'m not available on schedule',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  visualDensity: const VisualDensity(
                      horizontal: -4, vertical: -4),
                  title: NormalText(
                    text: "I have an activity that can\'t be left behind",
                    size: 13,
                    color: AppColor.normalTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                  value: 'I have an activity that can\'t be left behind',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  visualDensity: const VisualDensity(
                      horizontal: -4, vertical: -4),
                  title: NormalText(
                    text: "I don\'t want to tell",
                    size: 13,
                    color: AppColor.normalTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                  value: 'I don\'t want to tell',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  visualDensity: const VisualDensity(
                      horizontal: -4, vertical: -4),
                  title: NormalText(
                    text: "Changes of plans",
                    size: 13,
                    color: AppColor.normalTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                  value: 'Changes of plans',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  visualDensity: const VisualDensity(
                      horizontal: -4, vertical: -4),
                  title: NormalText(
                    text: "Others",
                    size: 13,
                    color: AppColor.normalTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                  value: 'Others',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value!;
                    });
                  },
                ),

                /*_buildRadioButton('I\'m having a schedule clash'),
            _buildRadioButton('I\'m not available on schedule'),
            _buildRadioButton('I have an activity that can\'t be left behind'),
            _buildRadioButton('I don\'t want to tell'),
            _buildRadioButton('Changes of plans'),
            _buildRadioButton('Others'),*/
                const SizedBox(height: 16),
                NormalText(
                  text: "Reason",
                  size: 14,
                  color: AppColor.blackColor,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _reasonController,
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
                    labelText: 'Reason For Rescheduled',
                    filled: true,
                    fillColor: AppColor.whiteColor,
                  ),
                  maxLines: 4,
                  textAlignVertical: TextAlignVertical.top,
                ),
                const SizedBox(height: 16),

                DefaultButton(
                  key: UniqueKey(),
                  // loadingFlag: provider.isLoading,
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(
                        RescheduleAppointmentDetailPage.routeName);
                  },
                  text: "Next",
                  fontSize: 16,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w500,
                  fixedSizeWidth: 0.9,
                  fontColor: AppColor.whiteColor,
                ),
              ],
            )),
      ),
    );
  }



}
