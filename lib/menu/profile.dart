import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/controller/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Inject atau panggil ProfileController
    final ProfileController profileCtr = Get.put(ProfileController());

    // Palette warna ala Steam
    const backgroundColor = Color(0xFF171A21);
    const cardColor = Color(0xFF1B2838);
    const accentBlue = Color(0xFF66C0F4);
    const levelColor = Color(0xFF4B69FF);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- HEADER / BANNER & AVATAR SECTION ---
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // Banner Background
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF000000), Color(0xFF171A21), Color(0xFF2A475E)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                // Foto Profil dengan Border (Avatar Frame ala Steam)
                Positioned(
                  bottom: -40,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(color: accentBlue, width: 3),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: accentBlue.withOpacity(0.4),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      width: 90,
                      height: 90,
                      color: const Color(0xFF2A475E),
                      child: const Icon(Icons.person, size: 60, color: Colors.white70),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50),

            // --- NAMA, LEVEL & STATUS ---
            Obx(() => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          profileCtr.username.value,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        // Steam Level Badge Widget
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: levelColor, width: 2),
                            color: cardColor,
                          ),
                          child: Text(
                            '${profileCtr.level.value}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      profileCtr.status.value,
                      style: const TextStyle(
                        color: accentBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        profileCtr.bio.value,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white70, fontSize: 13),
                      ),
                    ),
                  ],
                )),

            const SizedBox(height: 24),

            // --- STATS SHOWCASE (Games, Badges, Hours) ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white10),
                ),
                child: Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStatItem('Games', '${profileCtr.gamesOwned.value}', accentBlue),
                        _buildStatItem('Badges', '${profileCtr.badgeCount.value}', accentBlue),
                        _buildStatItem('Playtime', profileCtr.totalPlaytime.value, accentBlue),
                      ],
                    )),
              ),
            ),

            const SizedBox(height: 16),

            // --- BADGES SHOWCASE SECTION ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Featured Badges',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Obx(() => Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: profileCtr.badges
                              .map((badge) => Chip(
                                    backgroundColor: const Color(0xFF2A475E),
                                    side: BorderSide.none,
                                    label: Text(
                                      badge,
                                      style: const TextStyle(color: Colors.white, fontSize: 12),
                                    ),
                                  ))
                              .toList(),
                        )),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // Helper widget buat nampilin item statistik
  Widget _buildStatItem(String label, String value, Color color) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: color,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(color: Colors.white54, fontSize: 12),
        ),
      ],
    );
  }
}