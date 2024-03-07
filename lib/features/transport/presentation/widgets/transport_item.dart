import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/constants/routesPage.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/core/helper/handle_image.dart';
import 'package:ride_share/features/home/data/models/transport_model.dart';

class TransportItem extends StatelessWidget {
  const TransportItem({
    super.key,
    required this.transportModel,
  });

  final TransportModel transportModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => GoRouter.of(context).push(
        avaiableVechileForRidePath,
        extra: transportModel.name,
      ),
      child: Container(
        height: size.height * .175,
        width: size.width * .4,
        decoration: AppConsts.decorationRentalWidgetHome.copyWith(
          color: AppConsts.mainColor.withOpacity(.01),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: HandleImageWidget(image: transportModel.image),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  transportModel.name,
                  style: AppConsts.style16.copyWith(
                    color: AppConsts.neutral900,
                  ),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
