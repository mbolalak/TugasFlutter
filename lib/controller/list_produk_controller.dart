import 'package:get/get.dart';
import 'package:latihanfluter/models/produk_model.dart';

class ListProdukController extends GetxController {
  List<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "Baldur's Gate 3", 
      harga: "Rp 879.999",
      description: "Game RPG epik dengan jalan cerita yang WUEEEEEEEEEDDDDYAAAAAAAAAAAAAAN banget.",
      reviews: "Overwhelmingly Positive",
      rating: "10/10",
      namatoko: "Larian Studios",

      imageUrl: "https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1086940/header.jpg", 
    ),

    ProdukModel(
      namaProduk: "Coconut Strike 2", 
      harga: "Rp 250.000",
      description: "FPS game, with VAC (Valve Allow Cheat)",
      reviews: "possitive",
      rating: "10/10",
      namatoko: "Volvo",

      imageUrl: "https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/730/header.jpg",
    ),
    ProdukModel(
      namaProduk: "Steins Gate", 
      harga: "Rp 130.000",
      description: "Game Novel",
      reviews: "possitive",
      rating: "10/10",
      namatoko: "Mages",

      imageUrl: "https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/412830/header.jpg",
    ),
     ProdukModel(
      namaProduk: "Rainbow Six Siege", 
      harga: "RP Free",
      description: "Tactical Shooter Game",
      reviews: "possitive",
      rating: "10/10",
      namatoko: "Ubi lembut",

      imageUrl: "https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/359550/header.jpg",
    ),
      ProdukModel(
      namaProduk: "Alan Tangi", 
      harga: "RP 130.000",
      description: "Game Story horror",
      reviews: "possitive",
      rating: "10/10",
      namatoko: "Remedy Entertaiment",

      imageUrl: "https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/108710/header.jpg",
    ),
    ProdukModel(
      namaProduk: "DOTA", 
      harga: "RP Free",
      description: "Mirip ML",
      reviews: "possitive",
      rating: "10/10",
      namatoko: "Volvo",

      imageUrl: "https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/570/header.jpg",
    ),
    ProdukModel(
      namaProduk: "Sea of Thieves",
      harga: "RP 200.000",
      description: "RPG open world",
      reviews: "possitive",
      rating: "10/10",
      namatoko: "Rare ltd",

      imageUrl: "https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1172620/header.jpg",
    ),
  ];
}
