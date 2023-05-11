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

class webfooter extends StatelessWidget {
  const webfooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
height: 600,width: double.infinity,color: Colors.black,
      child: Column(
        children: [
          Row(children: [

SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
            Column(children: [
              SizedBox(height: 40,),
            Image.asset('logo/footerlogo.png',height: 220,width: 220,)

            ],),
            SizedBox(width: 100,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              SizedBox(height: 160,),
              Text('Unternehmen',style: TextStyle(color: Colors.grey.withOpacity(0.7),fontSize: 16),),
              SizedBox(height: 20,),
              Text('A-Book Broker LLP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(height: 3,),
              Text('070540003503',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(height: 3,),
               Text('KZ25UWX00002083',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),

              SizedBox(height: 40,),
             Text('71 Timiryazev Street Office 17',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(height: 3,),
               Text('Almaty 050060',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(height: 3,),
              Text('KZ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
            ],),
            SizedBox(width: 100,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,children: [

              SizedBox(height: 100,),
              Text('Rechtliches',style: TextStyle(color: Colors.grey.withOpacity(0.7),fontSize: 16),),
              SizedBox(height: 20,),
              GestureDetector(onTap: () {
                launch('https://www.the-universe.trade/_files/ugd/ec6779_f556de2c5b5440d19f31bc28dcf8f15d.pdf');
              },
                child: Text('Privacy Policy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,decoration: TextDecoration.underline,
                decorationThickness: 2),),
              ),
              SizedBox(height: 80,),
              GestureDetector(onTap: () {
                launch('https://www.the-universe.trade/_files/ugd/ec6779_9962f75952374516b2bf4e3809af9c52.pdf');
              },
                child: Text('Terms And Conditions',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,decoration: TextDecoration.underline,
                    decorationThickness: 2),),
              ),
              SizedBox(height: 40,),
              GestureDetector(onTap: () {
                launch('https://www.the-universe.trade/_files/ugd/ec6779_e483a1c69f854c2681f4c352591e0a56.pdf');
              },
                child: Text('Customer Agreement',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,decoration: TextDecoration.underline,
                    decorationThickness: 2),),
              ),
              SizedBox(height: 3,),

            ],),
            SizedBox(width: 100,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              SizedBox(height: 160,),
              Text('Informationen',style: TextStyle(color: Colors.grey.withOpacity(0.7),fontSize: 16),),
              SizedBox(height: 20,),
              GestureDetector(onTap: () {
                launch('http://tyu-trade.com/original');
              },
                child: Text('MyFxBook Portfolio',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,decoration: TextDecoration.underline,
                    decorationThickness: 2),),
              ),
              SizedBox(height: 2,),
              GestureDetector(onTap: () {
                launch('https://www.the-universe.trade/marketing-bonus');
              },child: Text('Marketing Bonus',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,),)),
              SizedBox(height: 60,),
              GestureDetector(onTap: () {
                launch('https://www.the-universe.trade/about-us');
              },child: Text('Presentation',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,),)),
              SizedBox(height: 40,),
              GestureDetector(onTap: () {
                launch('https://www.the-universe.trade/_files/ugd/ec6779_e28d6fb148d7412b914aa33b56faa362.pdf');
              },
                child: Text('One Pager',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,decoration: TextDecoration.underline,
                    decorationThickness: 2),),
              ),


            ],),



          ],),
SizedBox(height: 20,),
          Center(child:  Text('This website is operated by an affiliate partner.'.tr,style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold,
fontSize: 35
          ),),),
          SizedBox(height: 30,),


          Center(child: Image.asset('logo/footer3.png'))
        ],
      )





    );
  }
}
