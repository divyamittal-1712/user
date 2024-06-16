import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_app/constant/app_assets.dart';

import '../../../utils/app_colors.dart';
import '../../../widgets/custom_text_filed.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/text_widget.dart';
import '../../home/app_bar/MyAppBar.dart';
import '../../home/home.dart';

class EditProfilePage extends StatefulWidget {
  // const EditProfilePage({super.key});

  static const String routeName = '/editProfilePage';

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  List dropDownListData = [
    {"title": "Male", "value": "1"},
    {"title": "Female", "value": "2"},
    {"title": "Others", "value": "3"},
  ];

  String defaultValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      appBar: MyAppBar(
        title: 'Edit Profile',
        actions: [],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: AppColor.appBlack,
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Your Name",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: AppColor.borderLightGreyColor),
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: CustomTextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Full Name",
                      counterText: "",
                      hintStyle: TextStyle(color: AppColor.borderLightGreyColor,fontWeight: FontWeight.w400),
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Last Name",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: AppColor.borderLightGreyColor),
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: CustomTextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Last Name",
                      counterText: "",
                      hintStyle: TextStyle(color: AppColor.borderLightGreyColor,fontWeight: FontWeight.w400),
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Email ID",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: AppColor.borderLightGreyColor),
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: CustomTextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Email ID",
                      counterText: "",
                      hintStyle: TextStyle(color: AppColor.borderLightGreyColor,fontWeight: FontWeight.w400),
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Gender",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(
                height: 8,
              ),
              Container(
                child: dropDownList(context),
                height: 45,
              ),
              const SizedBox(
                height: 12,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Mobile Number",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: AppColor.borderLightGreyColor),
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: CustomTextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "+91 9998877445",
                      counterText: "",
                      hintStyle: TextStyle(color: AppColor.borderLightGreyColor,fontWeight: FontWeight.w400),
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Enter Pin Code",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: AppColor.borderLightGreyColor),
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: CustomTextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Pin Code",
                      counterText: "",
                      hintStyle: TextStyle(color: AppColor.borderLightGreyColor,fontWeight: FontWeight.w400),
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              DefaultButton(
                key: UniqueKey(),
                // loadingFlag: provider.isLoading,
                onPressed: () {},
                text: "Save Profile",
                fontSize: 16,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w500,
                fixedSizeWidth: 0.9,
                fontColor: AppColor.whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget dropDownList(BuildContext context){
    return ListView(children: [
      InputDecorator(
        decoration: InputDecoration(
          border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),borderSide: BorderSide.none),
          contentPadding: const EdgeInsets.all(10),
          fillColor: AppColor.whiteColor,
          filled: true
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
              isDense: true,
              value: defaultValue,
              isExpanded: true,
              menuMaxHeight: 350,
              icon: SvgPicture.asset('assets/svg/right_arrow.svg',
                width: 20,
                height: 20,
              ),
              items: [
                DropdownMenuItem(
                    value: "",
                    child: NormalText(
                      text: "Select...",
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.borderLightGreyColor,
                    ),
                ),
                ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                  return DropdownMenuItem(
                      child: Text(data['title']), value: data['value']);
                }).toList(),
              ],
              onChanged: (value) {
                print("selected Value $value");
                setState(() {
                  defaultValue = value!;
                });
              }),
        ),
      ),
      /*ElevatedButton(
          onPressed: () {
            if (secondDropDown == "") {
              print("Please select a course");
            } else {
              print("user selected course $defaultValue");
            }
          },
          child: const Text("Submit"))*/
      ]);
  }
}
