import 'package:flutter/material.dart';
import 'package:tradingwrebsite/phoneresponsive/phoneheader.dart';
class phonemain extends StatelessWidget {
  const phonemain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: PhoneHeader(),
    );
  }
}
