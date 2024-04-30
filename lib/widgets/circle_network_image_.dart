import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../constant/app_assets.dart';
import '../utils/app_colors.dart';


class CircleNetworkImageWidget extends StatelessWidget {
  String imageUrl;
  double? size;
  Color? topBorderColor, innerBorderColor;

  CircleNetworkImageWidget({
    required this.imageUrl,
    this.size = 100,
    this.innerBorderColor,
    this.topBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: size,
          width: size,
          clipBehavior: Clip.antiAlias,
          padding: const EdgeInsets.all(2.5),
          decoration: ShapeDecoration(
              shape: const CircleBorder(),
              color: topBorderColor ?? AppColor.primaryColor.withOpacity(.2)),
          child: Container(
            height: size,
            width: size,
            clipBehavior: Clip.antiAlias,
            padding: const EdgeInsets.all(2.5),
            decoration: ShapeDecoration(
                shape: const CircleBorder(),
                color: innerBorderColor ?? AppColor.whiteColor),
            child: Container(
              height: size,
              width: size,
              clipBehavior: Clip.antiAlias,
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
              ),
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  height: size,
                  width: size,
                  fit: BoxFit.cover,
                placeholder: (e,ee)=>Shimmer.fromColors(
                  baseColor: Colors.grey.shade400,
                  highlightColor: Colors.white,
                 child: Image.asset(AppAssets.placeholder),
                ),
                  errorWidget: (er,_err,_errr)=>Image.asset(
                    AppAssets.placeholder,
                    height: size,
                    width: size,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
