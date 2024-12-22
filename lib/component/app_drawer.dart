import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            DrawerHeader(
              decoration: const BoxDecoration(
               // color: Colors.white,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person, color: Colors.white, size: 40),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Saanvi Patel",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "B. Tech Student",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
        
            // List of Menu Items
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildDrawerItem(
                    icon: Icons.book,
                    label: "Courses",
                    onTap: () {},
                  ),
                  _buildDrawerItem(
                    icon: Icons.assignment,
                    label: "Assignments",
                    onTap: () {},
                  ),
                  _buildDrawerItem(
                    icon: Icons.bar_chart,
                    label: "Progress",
                    onTap: () {},
                  ),
                  _buildDrawerItem(
                    icon: Icons.report,
                    label: "Reports",
                    onTap: () {},
                  ),
                  _buildDrawerItem(
                    icon: Icons.article,
                    label: "Blogs",
                    onTap: () {},
                  ),
                  const Divider(height: 20, color: Colors.grey),
                  _buildDrawerItem(
                    icon: Icons.help_outline,
                    label: "Help",
                    onTap: () {},
                  ),
                  _buildDrawerItem(
                    icon: Icons.logout,
                    label: "Logout Account",
                    iconColor: Colors.red,
                    textColor: Colors.red,
                    onTap: () {
                      // Handle logout
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String label,
    VoidCallback? onTap,
    Color iconColor = Colors.blue,
    Color textColor = Colors.black,
  }) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
        ),
      ),
      onTap: onTap,
    );
  }
}
