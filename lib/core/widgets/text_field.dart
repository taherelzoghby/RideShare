// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {
//   const CustomTextField({
//     Key? key,
//     required this.hint,
//     this.onChanged,
//     this.obscureText = false,
//     this.perfixIcon,
//     this.readOnly = false,
//     this.maxLines = 1,
//     this.perfixText = '',
//     this.onTap,
//     this.controller,
//     this.suffixIcon,
//     this.border,
//   }) : super(key: key);
//   final String hint;
//   final void Function(String)? onChanged;
//   final bool obscureText;
//   final Widget? perfixIcon;
//   final Widget? suffixIcon;
//   final bool readOnly;
//   final int maxLines;
//   final String perfixText;
//   final void Function()? onTap;
//   final TextEditingController? controller;
//   final OutlineInputBorder? border;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       onTap: onTap,
//       maxLines: maxLines,
//       readOnly: readOnly,
//       obscureText: obscureText,
//       style: AppConsts.style14.copyWith(color: AppConsts.neutral900),
//       cursorColor: AppConsts.primary500,
//       onChanged: onChanged,
//       decoration: InputDecoration(
//         hintText: hint,
//         hintStyle: AppConsts.style14.copyWith(fontWeight: FontWeight.w400),
//         prefixIcon: perfixIcon,
//         prefixText: perfixText,
//         suffixIcon: suffixIcon,
//         enabledBorder: border ??
//             AppConsts.normalBorderField.copyWith(
//               borderRadius: BorderRadius.circular(8),
//             ),
//         focusedBorder: border ??
//             AppConsts.normalBorderField.copyWith(
//               borderRadius: BorderRadius.circular(8),
//             ),
//         focusedErrorBorder: border ??
//             AppConsts.normalBorderField.copyWith(
//               borderRadius: BorderRadius.circular(8),
//             ),
//       ),
//     );
//   }
// }
