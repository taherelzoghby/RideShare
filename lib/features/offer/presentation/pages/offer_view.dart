import 'package:flutter/material.dart';
import 'package:ride_share/features/offer/presentation/widgets/offer_body.dart';

class OfferView extends StatelessWidget {
  const OfferView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OfferBody(),
      ),
    );
  }
}
