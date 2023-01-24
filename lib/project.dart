import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  MyPro(lang,title,desc,star){
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin:EdgeInsets.only(left: 20,right: 20,top: 40) ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(lang,style: TextStyle(
                  color: Colors.white,fontSize: 25
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(title,style: TextStyle(
                  color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(desc,style: TextStyle(
                  color: Colors.white,fontSize: 12
              ),
              ),
              SizedBox(
                height: 30,
              ),

              Row(
                children: [
                  Icon(Icons.star,
                    color: Colors.white70,
                    size: 18,),
                  Text(star,style: TextStyle(color: Colors.white70),
                  ),

                  Expanded(child: Container()
                  ),
                  IconButton(onPressed: (){}, icon: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white70,
                  ))

                ],
              )
            ],
          ),
        ),

      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
      backgroundColor: Color(0xff252525),
      title: Text(
        'project'
      ),
    ),
      body: SingleChildScrollView(
        child:
        Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyPro('ANDROID', 'EXCEL GUIDE & LEARN APP','My First Android Fully Function App' , '8'),
              MyPro('FLUTTER', 'LOGIN APP DEMO','My First Flutter Demo Practice app' , '5'),
              MyPro('DATA SCIENCE', 'WEB SCARPPING','First Data Science Project' , '2'),
              MyPro('DATA SCIENCE', 'MySQL FECHING DATA','Fech Data From SQL in Jupyternotebook' , '2'),
              MyPro('DATA SCIENCE', 'REGESSION LINEAR MODEL','My ML Frist project' , '2')
            ],
          ),
        ),
      ),
    );
  }
}
