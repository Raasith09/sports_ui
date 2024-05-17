import 'package:sports_ui/utils/my_images.dart';

class LeagueSportsModel {
  final String countryFlag;
  final String leagueName;
  final String countryName;
  final String club1Name;
  final String club1Flag;
  final String club1Goal;
  final String club2Name;
  final String club2Flag;
  final String club2Goal;
  LeagueSportsModel({
    required this.countryFlag,
    required this.leagueName,
    required this.countryName,
    required this.club1Name,
    required this.club1Flag,
    required this.club1Goal,
    required this.club2Name,
    required this.club2Flag,
    required this.club2Goal,
  });
}

List<LeagueSportsModel> leagueModel = [
  LeagueSportsModel(
      countryFlag: MyAssets.laliga,
      leagueName: "La-Liga",
      countryName: "Spain",
      club1Name: "Real Madrid",
      club1Flag: MyAssets.laligateam1,
      club1Goal: "2",
      club2Name: "Barcelona",
      club2Flag: MyAssets.laligateam2,
      club2Goal: "0"),
  LeagueSportsModel(
      countryFlag: MyAssets.premierLeague,
      leagueName: "Premiere-League",
      countryName: "England",
      club1Name: "united",
      club1Flag: MyAssets.plTeam1,
      club1Goal: "3",
      club2Name: "Liverpool",
      club2Flag: MyAssets.plTeam2,
      club2Goal: "2"),
  LeagueSportsModel(
      countryFlag: MyAssets.bundesLiga,
      leagueName: "Bundesliga",
      countryName: "Germany",
      club1Name: "Fc Bayern",
      club1Flag: MyAssets.blTeam1,
      club1Goal: "0",
      club2Name: "Dortmund",
      club2Flag: MyAssets.blTeam2,
      club2Goal: "2"),
  LeagueSportsModel(
      countryFlag: MyAssets.serieA,
      leagueName: "Seria A",
      countryName: "Italy",
      club1Name: "Juventus",
      club1Flag: MyAssets.serieA1,
      club1Goal: "0",
      club2Name: "Napoli",
      club2Flag: MyAssets.serieA2,
      club2Goal: "0"),
];
