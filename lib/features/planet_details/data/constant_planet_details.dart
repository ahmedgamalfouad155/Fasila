import 'package:fasila/core/constants/images.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/widgets.dart';

class ConstantPlanetDetails {
   final BuildContext context; 
  ConstantPlanetDetails(this.context);

  List<String> get weeks =>  [
    S.of(context).firstWeek,
      S.of(context).secondWeek,
      S.of(context).thirdWeek,
      S.of(context).fourthWeek,
      S.of(context).fifthWeek,
      S.of(context).sixthWeek,
      S.of(context).seventhWeek, 

  ];
   List<String> get days => [
    S.of(context).sat,
    S.of(context).sun,
    S.of(context).mon,
    S.of(context).tue,
    S.of(context).wed,
    S.of(context).thu,
    S.of(context).fri,
   ];
  final List<String> number = ["1", "2", "3", "4", "5", "6", "7"];

   List<String>get options => [
      S.of(context).fertilizer,
      S.of(context).water,
      S.of(context).light,
      S.of(context).temperature,
      S.of(context).soil,
      S.of(context).humidity,
  ];
  final List<String> images = [
    AppImages.fertilizerImage,
    AppImages.waterImage,
    AppImages.lightImage,
    AppImages.temperatureImage,
    AppImages.soilImage,
    AppImages.humidityImage,
  ];
}
