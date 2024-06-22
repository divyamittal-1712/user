import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/screens/login/views/phone.dart';
import '../../../constant/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/size_config.dart';
import '../../../utils/validation_function.dart';
import '../../../widgets/custom_text_filed.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/text_widget.dart';
import '../controller/phone_controller.dart';

class GetStartedScreen extends StatelessWidget {
  static const String routeName = '/getstarted_screen';

  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> _imageUrls = [
      'assets/images/slider_one.png',
      'assets/images/slider_two.png',
      'assets/images/slider_three.png',
    ];

    SizeConfig.init(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Consumer<PhoneProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CarouselSlider.builder(
                    itemCount: _imageUrls.length,
                    itemBuilder: (BuildContext context,
                        int index, int d) {
                      return sliderTile(context,_imageUrls[index]);
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1.0,
                      height:  height / 1.4,
                      aspectRatio: 0.8,
                      enlargeCenterPage: false  ,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: BigText(
                      text: "Find the best consultants",
                      fontWeight: FontWeight.w700,
                      size: 19,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: NormalText(
                      text: "Choose the best cunsultant you want, for your event",
                      color: AppColor.textGrey,
                      fontWeight: FontWeight.w500,
                      size: 11,
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: DefaultButton(
                      key: UniqueKey(),
                      // loadingFlag: provider.isLoading,
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(PhoneScreen.routeName, (route) => false);
                      },
                      text: "Get Started",
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      fixedSizeWidth: 0.9,
                      fontColor: AppColor.whiteColor,
                    ),
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }


  Widget sliderTile(BuildContext context,String img) {

    var width =  MediaQuery.of(context).size.width;
    var height =  MediaQuery.of(context).size.height;

    return  Center(
      child: Container(
        width: double.infinity,
        height: height,
        // width: MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: Image.asset(
            img,
            fit: BoxFit.fitHeight,
          ),
          // Image.network(
          //   sliderImage.image,
          //   fit: BoxFit.fill,
          // ),
        ),
      ),
    );
  }

}
