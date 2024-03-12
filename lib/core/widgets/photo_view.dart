import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../constants/style.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return PhotoView(
      loadingBuilder: (context, d) => const Center(
        child: CircularProgressIndicator(
          color: AppConsts.mainColor,
        ),
      ),
      imageProvider: NetworkImage(image),
    );
  }
}
