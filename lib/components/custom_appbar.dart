import 'package:flutter/material.dart';

class GlobalTitleCenterAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const GlobalTitleCenterAppbar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true, // Centered as per PDF
    );
  }
}
