import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60,left: 100),
              child: ShaderMask(
                shaderCallback: (rect){
                  return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black,Colors.transparent]).
                  createShader(
                      Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode:BlendMode.dstIn,
                child: Image.asset(
                  'assets/img1.png',
                  height: 500,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.63),
              child: Column(
                children: [
                  Text('Hello I am',style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                     ),
                  ),
                  Text('Aditya Bele',
                    style:
                    TextStyle(
                        color: Colors.white,
                        fontSize:40,
                        fontWeight: FontWeight.bold),),
                  SizedBox(height: 2,),
                  Text('Software Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(onPressed: () async =>{
                      await launch('https://www.linkedin.com/in/aditya-bele-1204/')
                    },
                      child: Text('Hire me'),style:
                      TextButton.styleFrom(
                          backgroundColor: Colors.white,primary: Colors.black)
                      ,),),
                  SizedBox(height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: ()async =>{
                        await launch('https://www.instagram.com/a_positive_spirit/')}, icon: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                    )),
                      IconButton(onPressed: ()async =>{
                        await launch('https://www.linkedin.com/in/aditya-bele-1204/')}, icon: Icon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.white,
                      )),
                      IconButton(onPressed: ()async =>{
                      await launch('https://github.com/AdityaBele')}, icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )),
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      )),

                    ],
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
