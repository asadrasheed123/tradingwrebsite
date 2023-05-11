import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class webheader extends StatelessWidget {
   webheader({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    void launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return SizedBox(height: 90,width: MediaQuery.of(context).size.width * 1,

      child:   Container( decoration: BoxDecoration(

        color: Colors.black,

        boxShadow: [

          BoxShadow(

            color: Colors.grey.withOpacity(0.5),

            spreadRadius: 2,

            blurRadius: 5,

            offset: Offset(0, 3),

          ),

        ],

      ),





          child: SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(children: [
SizedBox(width: MediaQuery.of(context).size.width*0.01,),


              Container(child: Center(child: Image.asset('logo/smalllogo.png'))),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('UNIVERSE',style: GoogleFonts.montserrat(color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(' Trading',style: GoogleFonts.montserrat(
                      fontSize: 20,color: Colors.white,

                    ),),

                  ],
                ),
              ),

              SizedBox(width: MediaQuery.of(context).size.width * 0.1,),

              Container(height: 50,decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(color:Color(0xFF9D70FF),width: 5)),
                child: TextButton(
                    onPressed: () {
                      buildLanguageDialog(context);
                    }, child: Text('Change Language ',style: GoogleFonts.montserrat(fontSize: 15,color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.bold, ))),
              ),

              TextButton(onPressed: () {

                launchURL('https://www.the-universe.trade/copy-of-%C3%BCber-uns');

              }, child:Text('Trading Strategies'.tr,style: GoogleFonts.montserrat(
                fontSize: 15,color: Colors.white.withOpacity(0.9),
                fontWeight: FontWeight.bold,
              ),)

              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
              TextButton(onPressed: () {
                launchURL('https://www.youtube.com/playlist?list=PL0zCAW6s1eqd4ugYxokOUME7GvWC-NnQI');


              }, child:Text('Educational Videos'.tr,style: GoogleFonts.montserrat(
                fontSize: 15,color: Colors.white.withOpacity(0.9),
                fontWeight: FontWeight.bold,
              ),)),

              SizedBox(width: MediaQuery.of(context).size.width * 0.23,),





              GestureDetector(onTap: () {
                launchURL('https://my.the-universe.trade/register?referral=36');
              },
                child: Container(height: 50,width: MediaQuery.of(context).size.width * 0.10,

                  decoration: BoxDecoration( gradient: LinearGradient(
                    colors: [
                      Color(0xFF895BEC),
                      Color(0xFF9D70FF),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),

                    borderRadius: BorderRadius.circular(10),


                  ),

                  child: Center(child: Text('login'.tr,style: GoogleFonts.montserrat(
                    fontSize: MediaQuery.of(context).size.width * 0.01,color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),)),



                ),
              )







            ],),
          ),

        ),



    );
  }
}
