// import 'package:flutter/cupertino.dart';

// class HeaderSmartRefresh extends StatelessWidget {
//   const HeaderSmartRefresh({
//     super.key,
//     required this.loadedLabel,
//   });

//   final String loadedLabel;

//   @override
//   Widget build(BuildContext context) {
//     return WaterDropHeader(
//       refresh: const CupertinoActivityIndicator(),
//       failed: Text(
//         StringsEn.loadFailedClickRetry,
//         style: AppConsts.style16.copyWith(
//           color: AppConsts.danger500,
//         ),
//       ),
//       complete: Text(
//         loadedLabel,
//         style: AppConsts.style16.copyWith(
//           color: AppConsts.success500,
//         ),
//       ),
//     );
//   }
// }
