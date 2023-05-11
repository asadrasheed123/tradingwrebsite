import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tradingwrebsite/phoneresponsive/phonecreateut.dart';
import 'package:tradingwrebsite/phoneresponsive/phonefooter.dart';
import 'package:tradingwrebsite/phoneresponsive/phonefxbook.dart';
import 'package:tradingwrebsite/phoneresponsive/phonelanding.dart';
import 'package:tradingwrebsite/phoneresponsive/phonetradeup.dart';
import 'package:tradingwrebsite/phoneresponsive/phonewhatut.dart';
import 'package:tradingwrebsite/phoneresponsive/phonewhyut.dart';
import 'package:url_launcher/url_launcher.dart';
void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

final List locale =[
  {'name':'ENGLISH','locale': Locale('en','US')},

  {'name':'हिंदी','locale': Locale('hi','IN')},
];
updateLanguage(Locale locale){
  Get.back();
  Get.updateLocale(locale);
}
buildLanguageDialog(BuildContext context){
  showDialog(context: context,
      builder: (builder){
        return AlertDialog(backgroundColor: Colors.black,
          title: Text('Choose Your Language',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),),
          content: Container(color: Colors.black,
            width: 100,
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(child: Text(locale[index]['name'],style: GoogleFonts.montserrat(color: Colors.white),
                    ),onTap: (){
                      print(locale[index]['name']);
                      updateLanguage(locale[index]['locale']);
                    },),
                  );
                }, separatorBuilder: (context,index){
              return Divider(
                color: Colors.white,
              );
            }, itemCount: locale.length
            ),
          ),
        );
      }
  );
}


class PhoneHeader extends StatefulWidget {

  @override
  _PhoneHeaderState createState() => _PhoneHeaderState();
}

class _PhoneHeaderState extends State<PhoneHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.black,
        iconTheme: IconThemeData(color:Color(0xFFde39f5),size: 40 ),
        bottom: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(20),
        ),



leading: Image.asset('logo/smalllogo.png'),

        title: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Text('Universe',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
          Text('Trading',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 14),),


        ],),
      ),

      endDrawer: Drawer(backgroundColor: Colors.black,width: MediaQuery.of(context).size.width*1,

        child: ListView(
          children: <Widget>[
 Row(mainAxisAlignment: MainAxisAlignment.end,
   children: [
     GestureDetector(onTap: () {
       Navigator.of(context).pop();
     },
       child: Container(height: 50,width: 50,
         decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.white),
          child: Center(child: Icon(Icons.close,color: Colors.black,size: 30,)),
       ),
     ),
   ],
 ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [


              GestureDetector(
                onTap: () {
                  launch('https://www.the-universe.trade/copy-of-%C3%BCber-uns');
                },
                child: Text('Trading Strategies'.tr,style: GoogleFonts.montserrat(color: Color(0xFFde39f5),fontSize: 18,fontWeight: FontWeight.bold),))

            ],),
            SizedBox(height: 40,),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [

              GestureDetector(onTap: () {
                launchURL('https://www.youtube.com/playlist?list=PL0zCAW6s1eqd4ugYxokOUME7GvWC-NnQI');
              },
                  child: Text('Educational Videos'.tr,style: GoogleFonts.montserrat(color: Color(0xFFde39f5),fontSize: 18,fontWeight: FontWeight.bold),))

            ],),
            SizedBox(height: 40,),
            TextButton(onPressed: () {
              buildLanguageDialog(context);
            }, child: Text('Language',style: GoogleFonts.montserrat(color: Color(0xFFde39f5),fontSize: 18,fontWeight: FontWeight.bold),)
            ),

            SizedBox(height: 40,),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [

              Container(height: 50,width: 230,
                decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(10),
                border: Border.all(color:Color(0xFF9d70ff),width: 2)),

                child: Center(child: GestureDetector(onTap: () {
                  launchURL('https://my.the-universe.trade/register?referral=36');
                },
                    child: Text('login'.tr,style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))),
              )

            ],),
            SizedBox(height: 40,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
              Container(color: Colors.green,child: Icon(FontAwesomeIcons.instagram,color: Colors.white,size: 35,)),

             Container(color: Colors.pink,child: Icon(FontAwesomeIcons.instagram,color: Colors.white,size: 35,)),

            ],),



          ],
        ),
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start ,children: [

          phonelanding(),
          phonetradeup(),
          phonewhyut(),
          phonewhatut(),
          phonefxbook(),
          Image.asset('logo/improveearn.png'),
          phonecreateut(),
          phonefooter()








        ],),
      ),
    );
  }
}