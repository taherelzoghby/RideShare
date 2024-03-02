// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants/strings.dart';
import '../constants/style.dart';
import '../constants/validate.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hint,
    this.onSaved,
    this.onChanged,
    this.obscureText = false,
    this.perfixIcon,
    this.suffixIcon,
    this.readOnly = false,
    this.maxLines = 1,
    this.perfixText = '',
    this.controller,
    this.border,
    this.validator,
    this.autoFocus = false,
    this.focusNode,
  }) : super(key: key);
  final String hint;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final bool obscureText;
  final Widget? perfixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final int maxLines;
  final String perfixText;
  final TextEditingController? controller;
  final OutlineInputBorder? border;
  final String? Function(String?)? validator;
  final bool autoFocus;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: hint == StringsEn.yourMobilePhone ||
              hint == StringsEn.yourMobileNumber
          ? TextInputType.number
          : TextInputType.text,
      maxLines: maxLines,
      readOnly: readOnly,
      obscureText: obscureText,
      autofocus: autoFocus,
      cursorColor: AppConsts.mainColor,
      controller: controller,
      focusNode: focusNode,
      validator: validator ??
          (value) {
            if (hint == StringsEn.email && !isEmailValid(value)) {
              return StringsEn.enterValidEmail;
            } else if ((hint == StringsEn.confirmPassword ||
                    hint == StringsEn.enterYourPassword) &&
                !isPasswordValid(value)) {
              return StringsEn.warningPass;
            } else if (value!.isEmpty) {
              return StringsEn.fieldRequired;
            }
            return null;
          },
      onFieldSubmitted: onSaved,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppConsts.styleHint14,
        prefixIcon: perfixIcon,
        suffixIcon: suffixIcon,
        focusedBorder: border ?? AppConsts.normalBorderField,
        enabledBorder: border ??
            AppConsts.normalBorderField.copyWith(
              borderSide: const BorderSide(
                color: AppConsts.neutral300,
                width: 1,
              ),
            ),
        focusedErrorBorder: AppConsts.errorBorderField,
        errorBorder: AppConsts.errorBorderField,
      ),
    );
  }
}
