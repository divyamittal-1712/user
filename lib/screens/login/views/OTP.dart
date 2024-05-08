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

    
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 40.0),
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
                fontSize: 13.5,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w800,
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
                onPressed: () {
                  context.read<OTPProvider>().homeTap(context);
                },
                text: "Verify",
                fontSize: 13.5,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w900,
                fixedSizeWidth: 0.9,
                fontColor: AppColor.whiteColor,
              ),
            ),
          ],
        )
      ),
      body: Consumer<OTPProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 60,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: BigText(
                      text: "Verify Phone",
                      size: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                      text: "OTP has been sent to +91-8541889529",
                      size: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkGreyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
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
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: NormalText(
                      text: "Didn’t receive code? Resend OTP",
                      size: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkGreyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
