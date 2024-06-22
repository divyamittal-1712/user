import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:user_app/screens/home/provider/provider.dart';
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
      width: 44,
      height: 44,
      textStyle:  TextStyle(
          fontSize: 20,
          color: AppColor.appBlack  ,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.borderLightGreyColor),
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
    );

    return Scaffold(
      backgroundColor: AppColor.pagebg,
      bottomNavigationBar: Container(
        height: 155,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: DefaultButton(
                            key: UniqueKey(),
                            // loadingFlag: provider.isLoading,
                            onPressed: () {
                              context.read<OTPProvider>().phoneTap(context);
                            },
                            text: "Back",
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w600,
                            fixedSizeWidth: 0.9,
                            fontColor: AppColor.blackColor,
                            color: AppColor.whiteColor,
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          child: DefaultButton(
                            key: UniqueKey(),
                            // loadingFlag: provider.isLoading,
                            onPressed: () {
                              context.read<OTPProvider>().homeTap(context);
                            },
                            text: "Verify",
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w600,
                            fixedSizeWidth: 0.9,
                            fontColor: AppColor.whiteColor,
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ],
        ),
      ),

      body: Consumer<OTPProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: BigText(
                      text: "Verify Phone",
                      size: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                      text: "OTP has been sent to +91-8541889529",
                      size: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkGreyColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Pinput(
                    defaultPinTheme: defaultPinTheme,
                    length: 6,
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
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'Didn’t receive code? ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.darkGreyColor,
                          )
                          ),
                          TextSpan(
                            text: 'Resend OTP',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.crayolaColor,
                            ),
                          ),
                        ],
                      ),
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
