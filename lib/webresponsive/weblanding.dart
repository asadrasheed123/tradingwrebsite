import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class weblanding extends StatelessWidget {
  const weblanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(

      children: [

        Container(

          height: 650,

          decoration: BoxDecoration(

            image: DecorationImage(

              image: AssetImage('logo/landingback.png'),

              fit: BoxFit.cover,

            ),

          ),

        ),

        Positioned( top: 0,

          bottom: 0,

          left: 0,

          right: 0,

          child: Container(

              height: 650,width: 600,

              color: Colors.black.withOpacity(0.8), // Adjust the opacity as needed

              child:Padding(

                padding: const EdgeInsets.only(right: 200,top: 200),

                child: SingleChildScrollView(scrollDirection: Axis.vertical,

                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,children: [





                    Text('Trading made simple'.tr,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w500),),

                    SizedBox(height: 20,),

                    Text(' UNIVERSE TRADING',style: GoogleFonts.montserrat(
                      fontSize: 60,color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                    SizedBox(height: 20,),


                    Text('Join  Universe  Trading now and gain smart and passive benefits!'.tr,style: GoogleFonts.montserrat(
                      fontSize: 15, color: Color(0xFFA9A9A6)
                    ),),

                    SizedBox(height: 20,),

                    GestureDetector(onTap: () {
                      launchURL('https://my.the-universe.trade/register?referral=36');

                    },
                      child: Container(height: 50,width: 200,

                        decoration: BoxDecoration( color: Color(0xFF9D70FF),

                          borderRadius: BorderRadius.circular(10),



                        ),

                        child: Center(child: Text('Open Account'.tr,
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white
                          ),)
                        ),



                      ),
                    ),

                    SizedBox(height: 20,),

                    GestureDetector(onTap: () {
                      launchURL('https://my.the-universe.trade/register?referral=36');
                    },
                      child: Container(height: 50,width: 250,

                        decoration: BoxDecoration( color: Color(0xFF9D70FF),

                          borderRadius: BorderRadius.circular(10),



                        ),

                        child: Center(child: Text('Start Onboarding Now'.tr,
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white
                          ),)),



                      ),
                    ),







                  ],),

                ),

              )

          ),

        ),



      ],

    );
  }
}
