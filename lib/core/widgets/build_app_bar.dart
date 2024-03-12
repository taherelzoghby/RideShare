import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/strings.dart';
import '../constants/style.dart';

AppBar buildAppBar(BuildContext context, {Widget? title, String? path}) {
  return AppBar(
    leadingWidth: MediaQuery.sizeOf(context).width * .25,
    title: title,
    centerTitle: true,
    leading: TextButton.icon(
      onPressed: path == null
          ? () => GoRouter.of(context).pop()
          : () => GoRouter.of(context).go(path),
      icon: const Icon(
        Icons.arrow_back_ios,
        color: AppConsts.neutral500,
      ),
      label: const Text(
        StringsEn.back,
        style: AppConsts.style16,
      ),
    ),
  );
}
