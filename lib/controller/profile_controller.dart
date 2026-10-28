import 'package:get/get.dart';

class ProfileController extends GetxController {
  // Data profil ala Steam
  var username = 'vctrh'.obs;
  var level = 42.obs;
  var status = 'Online'.obs;
  var bio = 'Software & Game Developer | PPLG Student\nBuilding cool stuff with Flutter & Unity 🚀'.obs;
  
  // Stats ala Steam
  var gamesOwned = 128.obs;
  var badgeCount = 35.obs;
  var totalPlaytime = '1,420 hrs'.obs;

  // Daftar badge singkat untuk showcase
  var badges = <String>[
    '🏆 Years of Service',
    '🎮 Collector 100+',
    '⚡ Summer Sale 2026',
    '🛠️ Community Pillar',
  ].obs;
}