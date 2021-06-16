import 'package:flutter/material.dart';

class AppBarCEP extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCEP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Buscar  CEP'),
      backgroundColor: Colors.green,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
