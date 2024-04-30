import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/app_assets.dart';

  class AppNetworkImage extends StatefulWidget {
  const AppNetworkImage(
    this.imgUrl, {
    super.key,
    this.width,
    this.height,
    this.onTap,
    this.boxFit = BoxFit.fill,
    this.svgPlaceholder,
    this.localPlaceHolderImage,
    this.radius = BorderRadius.zero,
    this.placeHolderWidget,
    this.margin,
    this.bgColor,
    this.borderColor,
    this.borderWidth,
    this.borderSpace,
    this.imagePadding,
    this.selectedFile,
  });

  final String imgUrl;
  final EdgeInsets? margin;
  final EdgeInsets? imagePadding;
  final String? svgPlaceholder;
  final Widget? placeHolderWidget;
  final String? localPlaceHolderImage;
  final double? width;
  final double? height;
  final void Function()? onTap;
  final BoxFit boxFit;
  final BorderRadius radius;
  final Color? bgColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderSpace;
  final File? selectedFile;

  @override
  State<AppNetworkImage> createState() => _AppNetworkImageState();
}

class _AppNetworkImageState extends State<AppNetworkImage> {
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    if (widget.width == double.infinity) {
      width = MediaQuery.of(context).size.width;
    } else {
      width = widget.width;
    }
    if (widget.height == double.infinity) {
      height = MediaQuery.of(context).size.height;
    } else {
      height = widget.height;
    }

    Widget child = Image.network(
      'https://cdn-icons-png.flaticon.com/512/64/64572.png',
      width: width,
      height: height,
      fit: widget.boxFit,
    );
    // SvgPicture.asset(
    //   AppSvgImages.userIcon,
    //   width: width,
    //   height: height,
    //   fit: widget.boxFit,
    // );

    if (widget.placeHolderWidget != null) {
      child = widget.placeHolderWidget!;
    }

    if (widget.localPlaceHolderImage != null) {
      child = Image.asset(
        widget.localPlaceHolderImage!,
        width: width,
        height: height,
        fit: widget.boxFit,
      );
    }

    if (widget.imgUrl.isNotEmpty && widget.selectedFile == null) {
      child = CachedNetworkImage(
        placeholder: (BuildContext context, String url) =>
            const AppImageProgressWidget(),
        width: width,
        height: height,
        fit: widget.boxFit,
        imageUrl: widget.imgUrl,
        errorWidget: (BuildContext context, String url, Object? error) {
          if (widget.placeHolderWidget != null) {
            return widget.placeHolderWidget!;
          }
          if ((widget.svgPlaceholder ?? '').isNotEmpty) {
            return SvgPicture.asset(
              widget.svgPlaceholder ?? '',
              width: width,
              height: height,
              fit: widget.boxFit,
            );
          }

          return Image.asset(
            widget.localPlaceHolderImage ?? AppAssets.placeholder,
            fit: widget.boxFit,
            width: width,
            height: height,
          );
        },
      );
    }

    if (widget.selectedFile != null) {
      child = Image.file(
        widget.selectedFile!,
        width: width,
        height: height,
        fit: widget.boxFit,
      );
    }

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: widget.margin ?? EdgeInsets.zero,
        padding: EdgeInsets.all(widget.borderSpace ?? 0),
        decoration: widget.borderColor != null
            ? BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: widget.borderWidth ?? 1.0,
                    color:
                        widget.borderColor ?? Theme.of(context).primaryColor))
            : null,
        child: Container(
          decoration:
              BoxDecoration(borderRadius: widget.radius, color: widget.bgColor),
          padding: widget.imagePadding ?? EdgeInsets.zero,
          child: ClipRRect(
            borderRadius: widget.radius,
            child: child,
          ),
        ),
      ),
    );
  }
}

class AppImageProgressWidget extends StatelessWidget {
  const AppImageProgressWidget({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 25,
      child: LinearProgressIndicator(
          value: value,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.black12),
          backgroundColor: Colors.black12),
    );
  }
}
