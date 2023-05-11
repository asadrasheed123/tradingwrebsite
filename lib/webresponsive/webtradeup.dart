import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';


class webtradeup extends StatefulWidget {
  const webtradeup({Key? key}) : super(key: key);

  @override
  _webtradeupState createState() => _webtradeupState();
}

class _webtradeupState extends State<webtradeup> {
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
    void launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }



    return Container(
        color: Colors.black.withOpacity(0.9),
        height: 600,
        width: MediaQuery.of(context).size.width * 1,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              'Trade up your life!'.tr,
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              child: Text(
                'Deposit today and our trading software will start working for you!'.tr,
                style: GoogleFonts.montserrat(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 450,
              child: Text(
                'Discover the advantages of our unique technology and how partnering with us can help to achieve your goals'.tr,
                style: GoogleFonts.montserrat(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                launchURL(
                    'https://my.the-universe.trade/register?referral=36');
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xFF9D70FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Open Your Trading Account Now'.tr,
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: MediaQuery.of(context).size.width*00.05,),

                  Container(height: 500,width: 500,
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

                ]
    )
    )
    );
  }
}