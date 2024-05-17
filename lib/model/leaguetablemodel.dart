// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:sports_ui/utils/my_images.dart';

class LeagueTableModel {
  final String flag;
  final String leagueName;
  final String leagueCountry;
  final String tableImage;
  LeagueTableModel({
    required this.flag,
    required this.leagueName,
    required this.leagueCountry,
    required this.tableImage,
  });
}

List<LeagueTableModel> myTable = [
  LeagueTableModel(
      flag: MyAssets.laliga,
      leagueName: "La-Liga",
      leagueCountry: "Spain",
      tableImage: MyAssets.table1),
  LeagueTableModel(
      flag: MyAssets.premierLeague,
      leagueName: "Premiere League",
      leagueCountry: "England",
      tableImage: MyAssets.table2),
  LeagueTableModel(
      flag: MyAssets.bundesLiga,
      leagueName: "BundesLiga",
      leagueCountry: "Germany",
      tableImage: MyAssets.table3),
  LeagueTableModel(
      flag: MyAssets.serieA,
      leagueName: "Seria A",
      leagueCountry: "Italy",
      tableImage: MyAssets.table4),
];
