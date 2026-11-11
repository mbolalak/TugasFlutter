import 'package:flutter/material.dart';
import '../components/stat_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFF171A21);
    const cardColor = Color(0xFF1B2838);
    const accentBlue = Color(0xFF66C0F4);
    const levelColor = Color(0xFF4B69FF);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  HEADER / BANNER AVATAR SECTION 
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF000000),
                        Color(0xFF171A21),
                        Color(0xFF2A475E),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -40,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(color: accentBlue, width: 3),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: accentBlue.withValues(alpha: 0.4),
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

            // --- NAMA, LEVEL & STATUS (HARDCODED) ---
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Zero_Claw',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: levelColor, width: 2),
                        color: cardColor,
                      ),
                      child: const Text(
                        '100',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  'Online',
                  style: TextStyle(
                    color: accentBlue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'aku mau pc gratis',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // stats showcase
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StatItem(
                      label: 'Games',
                      value: '128',
                      color: accentBlue,
                    ),
                    StatItem(
                      label: 'Badges',
                      value: '35',
                      color: accentBlue,
                    ),
                    StatItem(
                      label: 'Playtime',
                      value: '1,420 hrs',
                      color: accentBlue,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // badges (HARDCODED) 
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
                  children: const [
                    Text(
                      'Featured Badges',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        Chip(
                          backgroundColor: Color.fromARGB(255, 7, 0, 134),
                          side: BorderSide.none,
                          label: Text('🏆 Years of Service', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                        Chip(
                          backgroundColor: Color(0xFF2A475E),
                          side: BorderSide.none,
                          label: Text('🎮 Collector 100+', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                        Chip(
                          backgroundColor: Color(0xFF2A475E),
                          side: BorderSide.none,
                          label: Text('⚡ Summer Sale 2026', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                        Chip(
                          backgroundColor: Color(0xFF2A475E),
                          side: BorderSide.none,
                          label: Text('🛠️ Community Pillar', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                      ],
                    ),
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
}