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

class webcreateut extends StatelessWidget {
  const webcreateut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.vertical,
      child: Container(height: 400,width: double.infinity,color: Color(0xFF243C8C),
        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            SizedBox(width: 100,),
            Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                SizedBox(width: 300,child: Text('Create your account now'.tr,style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)
                ),
                SizedBox(height: 5,),

                Padding(padding: EdgeInsets.only(left: 100),
                  child: SizedBox(width: 400,child: Text('It has never been easier to earn money by trading.'.tr,style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),)
                  ),
                ),
                SizedBox(height: 50,),
                GestureDetector(onTap: () {
                  launchURL('https://my.the-universe.trade/register?referral=36');
                },
                  child: Container(height: 50,width: 300,

                    decoration: BoxDecoration( color: Color(0xFF9D70FF),

                      borderRadius: BorderRadius.circular(10),



                    ),

                    child: Center(child: Text('login'.tr,style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),)),



                  ),
                ),
              ],
            ),
            SizedBox(width: 200,),

            Image.asset('logo/createut.png'),






          ],),
        ),
      ),
    );
  }
}
