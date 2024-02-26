import 'package:flutter/cupertino.dart';
import 'package:ride_share/core/constants/style.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoActivityIndicator(
        color: AppConsts.primary500,
      ),
    );
  }
}
