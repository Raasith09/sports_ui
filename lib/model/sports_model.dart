import 'package:sports_ui/utils/my_images.dart';

class SportsModel {
  final String name;
  final String image;

  SportsModel({required this.name, required this.image});
}

List<SportsModel> sportModelList = [
  SportsModel(
    name: "Football",
    image: MyAssets.sport1,
  ),
  SportsModel(
    name: "Basketball",
    image: MyAssets.sport2,
  ),
  SportsModel(
    name: "Tennis",
    image: MyAssets.sport3,
  ),
  SportsModel(
    name: "Baseball",
    image: MyAssets.sport4,
  ),
  SportsModel(
    name: "Beachball",
    image: MyAssets.sport5,
  ),
  SportsModel(
    name: "Football",
    image: MyAssets.sport6,
  ),
];
