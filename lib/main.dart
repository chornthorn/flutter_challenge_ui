import 'package:flutter/material.dart';

import 'pages/btc_ui/btc_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: BTCPage(),
    );
  }
}
