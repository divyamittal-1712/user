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
                    text: "Enter Full Name",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
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
                      hintText: "Enter Full Name",
                      counterText: "",
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Enter Email",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
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
                      hintText: "Enter Email",
                      counterText: "",
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Select Gender",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: dropDownList(context),
                height: 68,

              ),

              Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Select State",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
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
                      hintText: "Select...",
                      counterText: "",
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: NormalText(
                    text: "Enter Pin Code",
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
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
                      hintText: "Enter Pin Code",
                      counterText: "",
                      labelStyle: TextStyle(color: AppColor.appBlack),
                    ),
                    // validator: validateMobileNumber,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultButton(
                      key: UniqueKey(),
                      // loadingFlag: provider.isLoading,
                      onPressed: () {},
                      text: "Back",
                      fontSize: 13,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w900,
                      fixedSizeWidth: 0.9,
                      fontColor: AppColor.blackColor,
                      color: AppColor.whiteColor,
                    ),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: DefaultButton(
                      key: UniqueKey(),
                      // loadingFlag: provider.isLoading,
                      onPressed: () {},
                      text: "Save Profile",
                      fontSize: 13,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w900,
                      fixedSizeWidth: 0.9,
                      fontColor: AppColor.whiteColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              )
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
                      size: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColor.darkGreyColor,
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
