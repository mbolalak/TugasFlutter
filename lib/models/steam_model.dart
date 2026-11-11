import 'dart:convert';

List<SteamModel> steamModelFromJson(String str) =>
    List<SteamModel>.from(json.decode(str).map((x) => SteamModel.fromJson(x)));

String steamModelToJson(List<SteamModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SteamModel {
  final String title;
  final String salePrice;
  final String normalPrice;
  final String savings;
  final String steamRatingPercent;
  final String thumb;

  SteamModel({
    required this.title,
    required this.salePrice,
    required this.normalPrice,
    required this.savings,
    required this.steamRatingPercent,
    required this.thumb,
  });

  factory SteamModel.fromJson(Map<String, dynamic> json) => SteamModel(
        title: json["title"] ?? "",
        salePrice: json["salePrice"] ?? "0",
        normalPrice: json["normalPrice"] ?? "0",
        savings: json["savings"] ?? "0",
        steamRatingPercent: json["steamRatingPercent"] ?? "0",
        thumb: json["thumb"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "salePrice": salePrice,
        "normalPrice": normalPrice,
        "savings": savings,
        "steamRatingPercent": steamRatingPercent,
        "thumb": thumb,
      };

  // Getter helper format diskon bulat (misal: "90%")
  String get formattedSavings {
    final val = double.tryParse(savings) ?? 0.0;
    return "${val.toStringAsFixed(0)}%";
  }

  // Getter helper format harga
  String get formattedSalePrice => "\$$salePrice";
  String get formattedNormalPrice => "\$$normalPrice";
}