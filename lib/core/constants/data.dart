import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/strings.dart';
import 'package:ride_share/core/constants/style.dart';
import 'package:ride_share/features/favourite/presentation/pages/favourite_view.dart';
import 'package:ride_share/features/home/data/models/transport_model.dart';
import 'package:ride_share/features/home/presentation/pages/home_view.dart';
import 'package:ride_share/features/offer/presentation/pages/offer_view.dart';
import 'package:ride_share/features/profile/pages/profile_view.dart';

import 'assets.dart';
import 'enum.dart';

List<Gender> genders = <Gender>[
  Gender.Male,
  Gender.Female,
];
List<TextSpan> childrenTerms = const [
  TextSpan(text: StringsEn.bySigningUp1),
  TextSpan(
    text: StringsEn.bySigningUp2,
    style: TextStyle(color: AppConsts.mainColor),
  ),
  TextSpan(text: StringsEn.bySigningUp3),
  TextSpan(
    text: StringsEn.bySigningUp4,
    style: TextStyle(color: AppConsts.mainColor),
  ),
];
List<DropdownMenuItem<Gender>> genderList = genders
    .map<DropdownMenuItem<Gender>>(
      (Gender item) => DropdownMenuItem<Gender>(
        value: item,
        child: Text(item.name),
      ),
    )
    .toList();
//screens
List<Widget> screens = const [
  HomeView(),
  FavView(),
  OfferView(),
  ProfileView(),
];
List<TransportModel> transports = const [
  TransportModel(
    name: StringsEn.car,
    image: Assets.imagesCar,
  ),
  TransportModel(
    name: StringsEn.taxi,
    image: Assets.imagesTaxi,
  ),
  TransportModel(
    name: StringsEn.bike,
    image: Assets.imagesBike,
  ),
];
List<String> images = [
  "https://vehicle-images.dealerinspire.com/0e3a-110005802/3MW69FF01R8D94196/8e9eb309870905788de3273dc78224d1.jpg",
  "https://contactcars.fra1.cdn.digitaloceanspaces.com/contactcars-production/Images/Small/Engines/60199e1b110a623ace63566f_2c467fce-34ef-4c25-abd2-f13bb4e218ad.jpeg",
  "https://euromotorsnews.com.br/wp-content/uploads/2020/01/novo-bmw-320i-deixe-a-tecnologia-te-conduzir.jpg",
];
