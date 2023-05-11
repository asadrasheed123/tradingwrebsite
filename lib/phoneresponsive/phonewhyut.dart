import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class phonewhyut extends StatelessWidget {
  const phonewhyut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,height: MediaQuery.of(context).size.height*0.9,
        decoration: BoxDecoration(
            color: Color(0xFF243C8C)
        ),
       child:SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
SizedBox(height: 50,),

            SizedBox(width: 280,child: Text('What makes Universe Trading the right partner for your trading needs?'.tr,style: GoogleFonts.montserrat(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),)),
            SizedBox(height: 50,),
Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
  SizedBox(width: MediaQuery.of(context).size.width*0.06,),
  SizedBox(height: MediaQuery.of(context).size.height*0.55,
      child: Image.asset('logo/phonewhatut.jpg')),
SingleChildScrollView(scrollDirection: Axis.horizontal,
  child:   Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
   Text('Proven Success',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
    SizedBox(width: 200,child: Text('More than two years of externally verified trading results'.tr,style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.7),fontSize: 15,)),
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.13,),
    Text('Live-Chat Support',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
    SizedBox(width: 200,child: Text('Enjoy the best live chat support. No matter what you need, we are here for you'.tr,style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.7),fontSize: 15,)),
    ),
    SizedBox(height: MediaQuery.of(context).size.height*0.1,),
    SizedBox(width: MediaQuery.of(context).size.width*00.69,child: Text('No prior knowledge Required'.tr,style: GoogleFonts.montserrat(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
    SizedBox(width: MediaQuery.of(context).size.width*00.7,child: Text('In 3 simple steps to your own trading portfolio'.tr,style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.7),fontSize: 15,)),
    ),
  ],),
)

],)






          ],),
        )


        


    );
  }
}
