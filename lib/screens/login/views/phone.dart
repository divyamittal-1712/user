import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constant/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/size_config.dart';
import '../../../utils/validation_function.dart';
import '../../../widgets/custom_text_filed.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/text_widget.dart';
import '../controller/phone_controller.dart';

class PhoneScreen extends StatelessWidget {
  static const String routeName = '/phone_screen';

  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 40.0),
        child: DefaultButton(
          key: UniqueKey(),
          // loadingFlag: provider.isLoading,
          onPressed: () {
            context.read<PhoneProvider>().otpTap(context);
          },
          text: "Continue",
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w900,
          fixedSizeWidth: 0.9,
          fontColor: AppColor.whiteColor,
        ),
      ),
      body: Consumer<PhoneProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: BigText(
                      text: "Enter Your Phone Number",
                      size: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                        text: "We’ll send you an OTP",
                        color: AppColor.darkGreyColor,
                        fontWeight: FontWeight.w500,
                        size: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColor.borderLightGreyColor),
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 40,
                          child: CustomTextField(
                            controller: provider.countryController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "+91",
                              labelStyle: TextStyle(color: AppColor.textGrey),
                            ),
                            style: TextStyle(
                              color: AppColor.appBlack,
                              fontWeight: FontWeight.w500,
                              fontFamily: "assets/font/Inter_Regular.ttf",
                            ),
                          ),
                        ),
                        Text(
                          "|",
                          style: TextStyle(
                              fontSize: 30,
                              color: AppColor.borderLightGreyColor),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextField(
                            controller: provider.phoneController,
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: AppColor.textGrey)),
                              // enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: AppColor.borderLightGreyColor)),
                              hintText: "Enter Phone Number",
                              // labelText: "Enter number",
                              counterText: "",
                              labelStyle: TextStyle(color: AppColor.appBlack),
                            ),
                            style: TextStyle(
                              color: AppColor.appBlack,
                              fontWeight: FontWeight.w400,
                              fontFamily: "assets/font/Inter_Regular.ttf",
                            ),
                            validator: validateMobileNumber,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),


              ],
            ),
          );
        },
      ),
    );
  }
}
