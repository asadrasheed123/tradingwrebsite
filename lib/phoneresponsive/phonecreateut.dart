import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tradingwrebsite/webresponsive/webfxbook.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class phonecreateut extends StatelessWidget {
  const phonecreateut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.vertical,
      child: Container(height: MediaQuery.of(context).size.height*0.65,color: Color(0xFF243C8C),
        child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [


          Image.asset('logo/createut.png'),
          SizedBox(width: 400,child: Padding(padding: EdgeInsets.only(left: 20),child: Text('login'.tr,style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 29),))
          ),
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.only(left: 65),
            child: SizedBox(width: 400,child: Text('It has never been easier. Let our trading software work for you.'.tr,style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.8),fontSize: 15),)
            ),
          ),
          SizedBox(height: 40,),
          GestureDetector(onTap: () {
            launchURL('https://my.the-universe.trade/register?referral=36');
          },
            child: Container(height: 50,width: 250,

              decoration: BoxDecoration( color: Color(0xFF9D70FF),

                borderRadius: BorderRadius.circular(10),



              ),

              child: Center(child: Text('login'.tr,style: GoogleFonts.montserrat(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),



            ),
          ),

        ],),
        ),
      ),
    );
  }
}
