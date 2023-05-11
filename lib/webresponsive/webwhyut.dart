import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class webwhyut extends StatelessWidget {
  const webwhyut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,height: 600,
        decoration: BoxDecoration(
            color: Color(0xFF243C8C)
        ),
        child: Center(child:SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            SizedBox(height: 50,),

            Text('Why is Universal Trading your partner for successful trading?'.tr,style: GoogleFonts.montserrat(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Image.asset('logo/whyus.png'),
            SizedBox(height: 30,),

            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Text('Proven Success'.tr,style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(width: 190,),

                  Text('Live Chat Support'.tr,style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(width: 150,),

                  Text('No Prior Knowledge Required'.tr,style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 30,),

            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  SizedBox(width: 250,child: Padding(padding: EdgeInsets.only(right: 80),
                    child: Text('More than two years of externally verified trading results.'.tr,style: GoogleFonts.montserrat(fontSize: 15,color: Colors.white,),
                      textAlign: TextAlign.center,
                    ),
                  )),

                  SizedBox(width: 300,child: Padding(padding: EdgeInsets.only(left: 80),
                    child: Text('Enjoy the best live chat support. No matter what you need, we are here for you.'.tr,style: GoogleFonts.montserrat(fontSize: 15,color: Colors.white,),
                      textAlign: TextAlign.center,),
                  )),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.07,),

                  SizedBox(width: 250,
                    child: Padding(padding: EdgeInsets.only(left: 80),
                      child: Text('In 3 simple steps to your own trading portfolio.'.tr,style: GoogleFonts.montserrat(fontSize: 15,color: Colors.white,),
                        textAlign: TextAlign.center, ),
                    ),
                  ),
                ],
              ),
            ),



          ],),
        )


        )


    );
  }
}
