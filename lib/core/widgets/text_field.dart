// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants/style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    this.onChanged,
    this.obscureText = false,
    this.perfixIcon,
    this.readOnly = false,
    this.maxLines = 1,
    this.perfixText = '',
    this.onTap,
    this.controller,
    this.suffixIcon,
    this.border,
    this.focusNode,
    this.onEditingComplete,
  }) : super(key: key);
  final String hint;
  final void Function(String)? onChanged;
  final bool obscureText;
  final Widget? perfixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final int maxLines;
  final String perfixText;
  final void Function()? onTap;
  final TextEditingController? controller;
  final OutlineInputBorder? border;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: onTap,
      maxLines: maxLines,
      readOnly: readOnly,
      obscureText: obscureText,
      onChanged: onChanged,
      focusNode: focusNode,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppConsts.neutral100.withOpacity(.5),
        hintText: hint,
        hintStyle: AppConsts.style14.copyWith(fontWeight: FontWeight.w400),
        prefixIcon: perfixIcon,
        prefixText: perfixText,
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
