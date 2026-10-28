import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/menu_drawer_controller.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Panggil controller drawer
    final MenuDrawerController drawerCtr = Get.find<MenuDrawerController>();

    const backgroundColor = Color(0xFF171A21);
    const cardColor = Color(0xFF1B2838);
    const accentBlue = Color(0xFF66C0F4);

    return Drawer(
      backgroundColor: backgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header Drawer Steam Style
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: cardColor,
            ),
            currentAccountPicture: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(color: accentBlue, width: 2),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/1000000', // Atau Icon/Image lokal
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.person, color: Colors.white, size: 40),
              ),
            ),
            accountName: const Text(
              'vctrh',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            accountEmail: const Text(
              'Online',
              style: TextStyle(color: accentBlue, fontSize: 12),
            ),
          ),

          // Menu Pilihan
          Obx(() => ListTile(
                leading: Icon(
                  Icons.home,
                  color: drawerCtr.selectedIndex.value == 0
                      ? accentBlue
                      : Colors.white54,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: drawerCtr.selectedIndex.value == 0
                        ? Colors.white
                        : Colors.white70,
                  ),
                ),
                selected: drawerCtr.selectedIndex.value == 0,
                selectedTileColor: cardColor,
                onTap: () => drawerCtr.changePage(0),
              )),
          Obx(() => ListTile(
                leading: Icon(
                  Icons.history,
                  color: drawerCtr.selectedIndex.value == 1
                      ? accentBlue
                      : Colors.white54,
                ),
                title: Text(
                  'History',
                  style: TextStyle(
                    color: drawerCtr.selectedIndex.value == 1
                        ? Colors.white
                        : Colors.white70,
                  ),
                ),
                selected: drawerCtr.selectedIndex.value == 1,
                selectedTileColor: cardColor,
                onTap: () => drawerCtr.changePage(1),
              )),
          Obx(() => ListTile(
                leading: Icon(
                  Icons.person,
                  color: drawerCtr.selectedIndex.value == 2
                      ? accentBlue
                      : Colors.white54,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: drawerCtr.selectedIndex.value == 2
                        ? Colors.white
                        : Colors.white70,
                  ),
                ),
                selected: drawerCtr.selectedIndex.value == 2,
                selectedTileColor: cardColor,
                onTap: () => drawerCtr.changePage(2),
              )),
        ],
      ),
    );
  }
}