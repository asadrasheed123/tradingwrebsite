import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class phonetradeup extends StatefulWidget {
  const phonetradeup({Key? key}) : super(key: key);

  @override
  _phonetradeupState createState() => _phonetradeupState();
}

class _phonetradeupState extends State<phonetradeup> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://fiverr-secured-attachments.s3.amazonaws.com/messaging_message/attachment/9949ae15cfd191cc5bf9af5641bdfc79-42595261683697755569/Video.Guru_20230507_205342134.mp4?AWSAccessKeyId=AKIA2QFBAPFU66CLYPHK&Expires=1683761175&Signature=Dp6Zto2OObWrq2kDBE36yuJrQRg%3D&response-content-disposition=attachment&response-content-type=video%2Fmp4',
    );
    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black.withOpacity(0.9),height: MediaQuery.of(context).size.height*0.8,width: MediaQuery.of(context).size.width*1,
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.3),
          Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.3,
                width: MediaQuery.of(context).size.width*0.8,
                child:  Container(height: 500,width: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('logo/tradeuppic.png'),

                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [

                      SizedBox(width:250 ,height: 250,child: VideoPlayer(_controller)),

                      FloatingActionButton(

                        onPressed: () {
                          setState(() {
                            if (_controller.value.isPlaying) {
                              _controller.pause();
                            } else {
                              _controller.play();
                            }
                          });
                        },
                        child: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                        ),
                      ),
                    ],
                  ),
                ),



            ),

            Text('Trade up your life!'.tr,style: GoogleFonts.montserrat(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.only(left: 40,right: 10),
              child: SizedBox(width: 500,
                child: Text('Deposit today and our trading software will start working for you!'.tr,
                  style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.8),fontSize: 14,fontWeight: FontWeight.w600),),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(width: 450,
              child: Padding(padding: EdgeInsets.only(left: 40,right: 10),
                child: Text('Discover the advantages of our unique technology and how partnering with us can help to achieve your goals'.tr,
                  style: GoogleFonts.montserrat(color: Colors.white.withOpacity(0.8),fontSize: 16,),),
              ),
            ),
SizedBox(height: 40,),
            GestureDetector(onTap: () {
              launchURL('https://my.the-universe.trade/register?referral=36');

            },
              child: Container(height: 60,width: 300,

                decoration: BoxDecoration( color: Color(0xFF9D70FF),

                  borderRadius: BorderRadius.circular(10),



                ),

                child: Center(child: Text('login'.tr,
                  style: GoogleFonts.montserrat(
                      fontSize: 13, fontWeight: FontWeight.bold,color: Colors.white
                  ),)
                ),



              ),
            ),


          ],),






        ],),
      ),

    );
  }
}
