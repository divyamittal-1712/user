import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_colors.dart';



class CustomTextField extends TextFormField {
  CustomTextField({
    String hintText = '',
    int? maxCharacter,
    Widget? suffixIcon,
    Key? key,
    TextEditingController? controller,
    FocusNode? focusNode,
    InputDecoration? decoration,
    TextInputType? keyboardType,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextInputAction? textInputAction,
    FormFieldValidator? validator,
    TextStyle? style,
    TextAlign textAlign = TextAlign.start,
    bool autofocus = false,
    bool readOnly = false,
    bool? showCursor,
    bool obscureText = false,
    bool autocorrect = true,
    bool? enableSuggestions = true,
    MaxLengthEnforcement? maxLengthEnforcement,
    int maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double cursorWidth = 2.0,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(30.0),
    bool? enableInteractiveSelection = true,
    ScrollController? scrollController,
    ScrollPhysics? scrollPhysics,
  }) : super(
    key: key,
    controller: controller,
    focusNode: focusNode,
    decoration: decoration ??
        InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          labelText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: AppColor.borderLightGreyColor,
              )
          ),
          enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: AppColor.borderLightGreyColor,
              )),
          contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),

        ),
    validator: validator,
    keyboardType: keyboardType,
    textCapitalization: textCapitalization,
    textInputAction: textInputAction,
    style: style,
    textAlign: textAlign,
    autofocus: autofocus,
    readOnly: readOnly,
    showCursor: showCursor,
    obscureText: obscureText,
    autocorrect: autocorrect,
    maxLengthEnforcement: maxLengthEnforcement,
    maxLines: maxLines,
    minLines: minLines,
    expands: expands,
    maxLength: maxLength ?? maxCharacter,
    onChanged: onChanged,
    onTap: onTap,
    onEditingComplete: onEditingComplete,
    // onSubmitted: onSubmitted,
    inputFormatters: inputFormatters,
    enabled: enabled,
    cursorWidth: cursorWidth,
    cursorRadius: cursorRadius,
    cursorColor: cursorColor,
    keyboardAppearance: keyboardAppearance,
    scrollPadding: scrollPadding,
    enableInteractiveSelection: enableInteractiveSelection,
    scrollController: scrollController,
    scrollPhysics: scrollPhysics,
  );
}
