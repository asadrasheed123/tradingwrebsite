import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradingwrebsite/LocalStrings.dart';
import 'package:tradingwrebsite/phoneresponsive/phoneheader.dart';
import 'package:tradingwrebsite/phoneresponsive/phonemain.dart';
import 'package:tradingwrebsite/webresponsive/webcreateut.dart';
import 'package:tradingwrebsite/webresponsive/webfooter.dart';
import 'package:tradingwrebsite/webresponsive/webfxbook.dart';
import 'package:tradingwrebsite/webresponsive/webheader.dart';
import 'package:tradingwrebsite/webresponsive/weblanding.dart';
import 'package:tradingwrebsite/webresponsive/webtradeup.dart';
import 'package:tradingwrebsite/webresponsive/webwhatut.dart';
import 'package:tradingwrebsite/webresponsive/webwhyut.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocaleString(),
      locale: Locale('en','US'),
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),

      debugShowCheckedModeBanner: false,
      home: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            // show mobile version of your website
            return phonemain();
          } else {
            // show desktop version of your website
            return const MyHomePage();
          }
        },
      ),

    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.white,
body: SingleChildScrollView(scrollDirection: Axis.vertical,
  child:   Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [




    webheader(),
    weblanding(),
    webwhyut(),
    webtradeup(),
    webwhatut(),
    webfxbook(),
    Image.asset('logo/improveearn.png'),
    webcreateut(),

    webfooter(),


  ],),
),

//////////////Follow BUttons
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16,
            right: 72,
            child: FloatingActionButton(
              onPressed: () {
                // Add your WhatsApp link or action here
              },
              backgroundColor: Colors.green,
              child: const Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Add your Instagram link or action here
              },
              backgroundColor: Colors.pinkAccent,
              child: const Icon(
                FontAwesomeIcons.instagram,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,





    );
  }
}
