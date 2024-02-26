// import 'package:flutter/material.dart';
// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({
//     super.key,
//     this.leadingOnTap,
//     required this.title,
//     this.trailingOnTap,
//     this.trailingWidget,
//     this.image,
//     this.color = AppConsts.neutral900,
//   });

//   final void Function()? leadingOnTap;
//   final String title;
//   final void Function()? trailingOnTap;
//   final Widget? trailingWidget;
//   final String? image;
//   final Color color;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return AspectRatio(
//       aspectRatio: AppConsts.aspect20on2,
//       child: Padding(
//         padding: AppConsts.mainPadding,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             ///arrow back
//             leadingOnTap == null
//                 ? ClipRRect(
//                     borderRadius: BorderRadius.circular(20),
//                     child: Image.asset(
//                       image!,
//                       height: size.height * .075.h,
//                     ),
//                   )
//                 : IconButton(
//                     onPressed: leadingOnTap,
//                     icon: Icon(Icons.arrow_back, color: color),
//                   ),

//             Text(
//               title,
//               style: AppConsts.style20.copyWith(
//                 color: color,
//               ),
//               textAlign: TextAlign.center,
//             ),

//             ///reset
//             trailingWidget == null
//                 ? Container(width: 50)
//                 : IconButton(
//                     onPressed: trailingOnTap,
//                     icon: trailingWidget!,
//                   ),
//           ],
//         ),
//       ),
//     );
//   }
// }
