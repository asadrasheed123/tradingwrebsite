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

class phonefxbook extends StatelessWidget {
  const phonefxbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.vertical,
      child:   Container(
        height: 650,width: double.infinity,color: Colors.black87,
        child: SingleChildScrollView(scrollDirection: Axis.horizontal,


           child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children: [
             SizedBox(height: 40,),
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Text("What is ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
             ),
             SizedBox(height: 5,),
             Padding(padding: EdgeInsets.only(left: 20),child: Text("My FxBook",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
             SizedBox(height: 30,),




             GestureDetector(onTap: () {
               launchURL('https://my.the-universe.trade/register?referral=36');
             },
               child: Padding(padding: EdgeInsets.only(left: 20),
                 child: Container(height: 50,width: 250,

                   decoration: BoxDecoration(color: Color(0xFF9D70FF),
                     borderRadius: BorderRadius.circular(10),



                   ),

                   child: Center(child: Text('login'.tr,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),



                 ),
               ),
             ),
              SizedBox(height: MediaQuery.of(context).size.height*00.05,),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(height: MediaQuery.of(context).size.height*0.15,width: MediaQuery.of(context).size.width*0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF9D70FF),
                          blurRadius: 10.0,
                          spreadRadius: 10.0,
                        ),
                      ],
                      color: Color(0xFF9D70FF)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'logo/fxbook.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
             SizedBox(height: 30,),

Row(children: [SizedBox(width: 10,),
  Container( decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFF9D70FF)),
    child: Icon(Icons.arrow_right,color: Colors.white,size: 40,),
  ),
  SizedBox(width: 5,),
  SizedBox(width: MediaQuery.of(context).size.width*0.7,
    child: Text('MyFxBook is an independent third-party tracking provider that allows all traders worldwide to connect their trading accounts'.tr
      ,style: GoogleFonts.montserrat(color: Colors.white),),
  ),


],),
             SizedBox(height: 20,),
             Row(children: [SizedBox(width: 10,),
               Container( decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFF9D70FF)),
                 child: Icon(Icons.arrow_right,color: Colors.white,size: 40,),
               ),
               SizedBox(width: 5,),
               SizedBox(width: MediaQuery.of(context).size.width*0.7,
                 child: Text('Every single day/week/month even every single trade is publicly and transparently viewable.'.tr
                   ,style: GoogleFonts.montserrat(color: Colors.white),),
               ),


             ],),
             SizedBox(height: 20,),
             Row(children: [SizedBox(width: 10,),
               Container( decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFF9D70FF)),
                 child: Icon(Icons.arrow_right,color: Colors.white,size: 40,),
               ),
               SizedBox(width: 5,),
               SizedBox(width: MediaQuery.of(context).size.width*0.7,
                 child: Text('MyFxBook is the most transparent platform available in the crypto and forex trading market.'.tr
                   ,style: GoogleFonts.montserrat(color: Colors.white),),
               ),


             ],)




            ],),






        ),

      ),
    );
  }
}
