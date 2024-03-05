
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/widgets/custom_divider.dart';

class TopBottomSheetWidget extends StatelessWidget {
  const TopBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(flex: 8),
        const Expanded(
          flex: 10,
          child: CustomDivider(),
        ),
        const Spacer(flex: 5),
        Expanded(
          flex: 3,
          child: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(Icons.clear),
          ),
        ),
      ],
    );
  }
}
