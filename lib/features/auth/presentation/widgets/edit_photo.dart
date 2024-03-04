
import 'package:flutter/material.dart';

import 'custom_circle_image.dart';

class EditPhoto extends StatelessWidget {
  const EditPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomCircleImage(
        image:
        'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg',
        onTap: () {},
      ),
    );
  }
}
