import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_colors.dart';
import 'masked_input_formator.dart';


class CustomPasswordTextInput extends StatefulWidget {
   CustomPasswordTextInput(
      {@required this.hintTextString,
       this.textEditController,
         this.inputType,
        this.enableBorder = true,
      this.themeColor,
     this.cornerRadius,
         this.maxLength,
         this.prefixIcon,
        this.textColor,
         this.errorMessage,
         this.validator,
         this.labelText});

  // ignore: prefer_typing_uninitialized_variables
  final hintTextString;
  final TextEditingController? textEditController;
  final InputType? inputType;
  final bool enableBorder;
  final Color? themeColor;
  final double? cornerRadius;
  final int? maxLength;
  final Widget? prefixIcon;
  final Color? textColor;
  final String? errorMessage;
  final String? labelText;
  String? Function(String?)? validator;

  @override
  _CustomTextInputState createState() => _CustomTextInputState();
}

// input text state
class _CustomTextInputState extends State<CustomPasswordTextInput> {
  bool _isValidate = true;
  String validationMessage = '';
  bool visibility = false;
  int oldTextSize = 0;

  // build method for UI rendering
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditController,
      decoration: InputDecoration(
        errorMaxLines: 2,
        hintText: widget.hintTextString as String,
        // errorText: _isValidate ? null : validationMessage,
        counterText: '',
        border: getBorder(),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: AppColor.textGrey)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: AppColor.borderLightGreyColor)),
        labelText: widget.labelText ?? widget.hintTextString as String,
        labelStyle: getTextStyle(),
        // prefixIcon: widget.prefixIcon ?? getPrefixIcon(),
        suffixIcon: getSuffixIcon(),
      ),
      validator: widget.validator,
      // onChanged: checkValidation,
      keyboardType: getInputType(),
      obscureText: widget.inputType == InputType.Password && !visibility,
      maxLength: widget.inputType == InputType.PaymentCard ? 19 : widget.maxLength ?? getMaxLength(),
      style: TextStyle(
        color: AppColor.appBlack,
        fontWeight: FontWeight.w400,
        // fontFamily: FontFamily.Inter,
      ),
      inputFormatters: [getFormatter()],
    );
  }

  //get border of textinput filed
  OutlineInputBorder getBorder() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: AppColor.borderLightGreyColor));
  }

  // formatter on basis of textinput type
  TextInputFormatter getFormatter() {
    if (widget.inputType == InputType.PaymentCard)
      return MaskedTextInputFormatter(
        mask: 'xxxx xxxx xxxx xxxx',
        separator: ' ',
      );
    else
      return TextInputFormatter.withFunction((oldValue, newValue) => newValue);
  }

  // text style for textinput
  TextStyle getTextStyle() {
    return  TextStyle(color: AppColor.textGrey);
  }

  // input validations
  String checkValidation(String? textFieldValue) {
    if (widget.inputType == InputType.Default) {
      //default
      _isValidate = textFieldValue!.isNotEmpty;
      // validationMessage = widget.errorMessage ?? 'Filed cannot be empty';
      return widget.errorMessage ?? 'Filed cannot be empty';
    } else if (widget.inputType == InputType.Email) {
      //email validation
      _isValidate = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(textFieldValue!);
      // validationMessage = widget.errorMessage ?? 'Email is not valid';
      return widget.errorMessage ?? 'Email is not valid';
    } else if (widget.inputType == InputType.Number) {
      //contact number validation
      _isValidate = textFieldValue!.length == widget.maxLength;
      // validationMessage = widget.errorMessage ?? 'Contact Number is not valid';
      return widget.errorMessage ?? 'Contact Number is not valid';
    } else if (widget.inputType == InputType.Password) {
      //password validation
      _isValidate = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(textFieldValue!);
      // validationMessage = widget.errorMessage ?? 'Use atleast 1 uppercase,numeric,lowercase & special symbol';
      return widget.errorMessage ?? 'Use atleast 1 uppercase,numeric,lowercase & special symbol';
    } else if (widget.inputType == InputType.PaymentCard) {
      //payment card validation
      _isValidate = textFieldValue!.length == 19;
      // validationMessage = widget.errorMessage ?? 'Card number is not correct';
      return widget.errorMessage ?? 'Card number is not correct';
    }else{
      return '';
    }
    oldTextSize = textFieldValue!.length;
    //change value in state
    setState(() {});
  }

  // return input type for setting keyboard
  TextInputType getInputType() {
    switch (widget.inputType) {
      case InputType.Default:
        return TextInputType.text;
        break;

      case InputType.Email:
        return TextInputType.emailAddress;
        break;

      case InputType.Number:
        return TextInputType.number;
        break;

      case InputType.PaymentCard:
        return TextInputType.number;
        break;

      default:
        return TextInputType.text;
        break;
    }
  }

  // get max length of text
  int getMaxLength() {
    switch (widget.inputType) {
      case InputType.Default:
        return 36;
        break;

      case InputType.Email:
        return 36;
        break;

      case InputType.Number:
        return 10;
        break;

      case InputType.Password:
        return 24;
        break;

      case InputType.PaymentCard:
        return 19;
        break;

      default:
        return 36;
        break;
    }
  }

  // get prefix Icon
  Icon getPrefixIcon() {
    switch (widget.inputType) {
      case InputType.Default:
        return Icon(
          Icons.person,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );
        break;

      case InputType.Email:
        return Icon(
          Icons.email,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );
        break;

      case InputType.Number:
        return Icon(
          Icons.phone,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );
        break;

      case InputType.Password:
        return Icon(
          Icons.lock,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );
        break;

      case InputType.PaymentCard:
        return Icon(
          Icons.credit_card,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );
        break;

      default:
        return Icon(
          Icons.person,
          color: widget.themeColor ?? Theme.of(context).primaryColor,
        );
        break;
    }
  }

  // get suffix icon
  Widget getSuffixIcon() {
    if (widget.inputType == InputType.Password) {
      return IconButton(
        onPressed: () {
          visibility = !visibility;
          setState(() {});
        },
        icon: Icon(
          visibility ? Icons.visibility : Icons.visibility_off,
          color: AppColor.darkGreyColor,
        ),
      );
    } else {
      return const Opacity(opacity: 0, child: Icon(Icons.phone));
    }
  }
}

//input types
enum InputType { Default, Email, Number, Password, PaymentCard }