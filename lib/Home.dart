import 'package:flutter/material.dart';

import 'AppBarCEP.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCEP(),
      body: BottomAppBar(),
    );
  }
}
