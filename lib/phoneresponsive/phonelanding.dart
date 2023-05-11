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
class phonelanding extends StatelessWidget {
  const phonelanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(

      children: [

        Container(

          height: MediaQuery.of(context).size.height * 00.7,
          width:  MediaQuery.of(context).size.width * 1,

          decoration: BoxDecoration(

            image: DecorationImage(

              image: AssetImage('logo/landingback.png'),

              fit: BoxFit.fitHeight,

            ),

          ),

        ),

        Positioned( top: 0,

          bottom: 0,

          left: 0,

          right: 0,

          child: Container(

    height: MediaQuery.of(context).size.height * 00.7, width:  MediaQuery.of(context).size.width * 1,

              color: Color(0xFF272C40).withOpacity(0.8), // Adjust the opacity as needed




                child: SingleChildScrollView(scrollDirection: Axis.vertical,

                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children: [


SizedBox(height: MediaQuery.of(context).size.height*0.1,),


                    Text('Trading made simple'.tr,style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),),

                    SizedBox(height: 10,),

                    Text(' Universe Trading',style: GoogleFonts.montserrat(
                      fontSize: 30,color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                    SizedBox(height: 10,),


                    SizedBox(width: 300,
                      child: Text('Join  Universe  Trading now and gain smart and passive benefits!'.tr,style: GoogleFonts.montserrat(
                          fontSize: 13, color: Color(0xFFA9A9A6),
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    SizedBox(height: 50,),

                    GestureDetector(onTap: () {
                      launchURL('https://my.the-universe.trade/register?referral=36');

                    },
                      child: Container(height: 50,width: 200,

                        decoration: BoxDecoration( color: Color(0xFF9D70FF),

                          borderRadius: BorderRadius.circular(10),



                        ),

                        child: Center(child: Text('login'.tr,
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

                        child: Center(child: Text('login'.tr,
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white
                          ),)),



                      ),
                    ),







                  ],),

                ),


          ),

        ),



      ],

    );
  }
}
