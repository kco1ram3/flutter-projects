import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  AppBarWidget(this.titleText);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}
