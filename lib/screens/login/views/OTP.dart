import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import '../../../constant/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/text_widget.dart';
import '../controller/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  static const String routeName = '/otp_screen';

  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.borderLightGreyColor),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    // final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    //   border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
    //   borderRadius: BorderRadius.circular(8),
    // );

    // final submittedPinTheme = defaultPinTheme.copyWith(
    //   decoration: defaultPinTheme.decoration?.copyWith(
    //     color: Color.fromRGBO(234, 239, 243, 1),
    //   ),
    // );

    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Consumer<OTPProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.phoneBack,
                  width: width,
                  height: height * 0.7,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                      text: "Enter Valid OTP",
                      size: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Padding(padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Pinput(
                    defaultPinTheme: defaultPinTheme,
                    // focusedPinTheme: focusedPinTheme,
                    // submittedPinTheme: submittedPinTheme,
                    /*validator: (s) {
                      return s == '2222' ? null : 'Pin is incorrect';
                    },*/
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) => print(pin),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: DefaultButton(
                    key: UniqueKey(),
                    // loadingFlag: provider.isLoading,
                    onPressed: () {
                      provider.homeTap(context);
                    },
                    text: "Continue",
                    fontSize: 18,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                    fixedSizeWidth: 0.9,
                    fontColor: AppColor.whiteColor,
                  ),
                ),
                const SizedBox(height: 12,),

                Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: NormalText(
                            text: "By proceeding you are agreeing to",
                            size: 12,
                            color: AppColor.textGrey,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Align(
                          alignment: Alignment.center,
                          child: NormalText(
                            text: "Terms & Conditions",
                            size: 12,
                            color: AppColor.skyBlueColor,
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
