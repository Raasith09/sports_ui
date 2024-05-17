import 'package:flutter/material.dart';
import 'package:sports_ui/screens/explore/explore.dart';
import 'package:sports_ui/screens/home/home1.dart';
import 'package:sports_ui/screens/my_profile/my_profile.dart';
import 'package:sports_ui/screens/standings/standings.dart';
import 'package:sports_ui/utils/my_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> myPages = [
    const HomeOne(),
    const MyExplore(),
    const Standings(),
    const MyProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0
          ? AppBar(
              backgroundColor: AppColors.mainThemeColor,
              elevation: 0,
              leadingWidth: 160,
              leading: Center(
                child: Text(
                  "LiveScore",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColors.highlightedTextColor),
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search,
                        size: 35, color: Colors.white)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications,
                        size: 35, color: Colors.white)),
              ],
            )
          : null,
      body: myPages[_selectedIndex],
      bottomNavigationBar: Container(
        color: const Color(0xFF1E1E2A), // Background color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildNavItem(Icons.home, 'Home', 0),
            _buildNavItem(Icons.explore, 'Explore', 1),
            _buildNavItem(Icons.bar_chart, 'Standings', 2),
            _buildNavItem(Icons.person, 'My Profile', 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: isSelected
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    label,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.highlightedButtonColor),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: AppColors.highlightedButtonColor,
                        shape: BoxShape.circle),
                  )
                ],
              )
            : Icon(
                icon,
                color: Colors.grey,
              ),
      ),
    );
  }
}
