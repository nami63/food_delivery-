import 'package:flutter/material.dart';
import 'package:test/Pages/mydrawertitle.dart';
import 'package:test/Pages/settings.dart'; // Import your settings page

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTitle(
            text: "Home",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTitle(
            text: "Settings", // Fixed capitalization
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SettingsPage()), // Corrected syntax for MaterialPageRoute
              );
            },
          ),
          MyDrawerTitle(
            text: "Logout", // Fixed capitalization
            icon: Icons.logout,
            onTap: () {
              // Implement logout functionality
            },
          )
        ],
      ),
    );
  }
}
