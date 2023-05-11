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

class webfxbook extends StatelessWidget {
  const webfxbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.vertical,
      child:   Container(
        height: 650,width: double.infinity,color: Colors.black87,
        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
            Column(children: [
              SizedBox(height: 250,),

              Container(height: 200,width: 600,
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
              SizedBox(height: 40,),
              GestureDetector(onTap: () {
                launchURL('https://my.the-universe.trade/register?referral=36');
              },
                child: Container(height: 40,width: 170,

                  decoration: BoxDecoration(color: Color(0xFF9D70FF),
                    borderRadius: BorderRadius.circular(10),



                  ),

                  child: Center(child: Text('login'.tr,style: TextStyle(color: Colors.white,fontSize: 16),)),



                ),
              ),





            ],),
            SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
            Column(children: [
              SizedBox(height: 40,),
              Text("What is ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text("My FxBook",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),

              SizedBox(width: 500,height: 100,
                child: ListTile(
                  leading: Container( decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFF9D70FF)),
                    child: Icon(Icons.arrow_right,color: Colors.white,size: 30,),
                  ),
                  title: Text('MyFxBook is an independent third-party tracking provider that allows all traders worldwide to connect their trading accounts to transparently document their own trading results independently.'.tr
                    ,style: GoogleFonts.montserrat(color: Colors.white),),



                ),
              ),
              SizedBox(width: 500,height: 100,
                child: ListTile(
                  leading: Container( decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFF9D70FF)),
                    child: Icon(Icons.arrow_right,color: Colors.white,size: 30,),
                  ),
                  title: Text('Every single day/week/month even every single trade is publicly and transparently viewable.'.tr
                    ,style: GoogleFonts.montserrat(color: Colors.white),),



                ),
              ),
              SizedBox(width: 500,height: 100,
                child: ListTile(
                  leading: Container( decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFF9D70FF)),
                    child: Icon(Icons.arrow_right,color: Colors.white,size: 30,),
                  ),
                  title: Text('MyFxBook is the most transparent platform available in the crypto and forex trading market.'.tr
                    ,style: GoogleFonts.montserrat(color: Colors.white),),



                ),
              ),





            ],)




          ],),
        ),

      ),
    );
  }
}
