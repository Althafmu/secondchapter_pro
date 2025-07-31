// lib/app/features/dashboard/dashboard_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/home_view.dart';
import 'dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar is now part of the main dashboard
      appBar: AppBar(
        title: const Text('GlobalTitleCenterAppbar'),
        centerTitle: true,
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: const [
            // List of pages for the bottom navigation
            HomeView(), 
            // Add placeholder widgets for other tabs
            Center(child: Text('Flights Page')),
            Center(child: Text('Keyboard Page')),
            Center(child: Text('Commands Page')),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeIndex,
          // Make sure to set the type to fixed when you have more than 3 items
          type: BottomNavigationBarType.fixed, 
          // Use a selected color to make the active tab clear
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.airplanemode_active), label: 'Flights'),
            BottomNavigationBarItem(icon: Icon(Icons.keyboard), label: 'Keyboard'),
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Commands'),
          ],
        ),
      ),
    );
  }
}
