import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/goals_card.dart';
import 'package:project/second_view.dart';
import 'package:project/top_nav.dart';

import 'activity_routine_card.dart';

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: 
      Container(
          decoration: BoxDecoration(
            color: Colors.red,
      borderRadius: BorderRadius.circular(10),

          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.fitHeight,
          ),),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TopNav(),
            SizedBox(height: 10,),
            SecondView(),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 15,left: 8,right: 8,bottom: 8),
              child: Text("Must Do For Your Goals", style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
          
            ListView(
              shrinkWrap: true,
          children: [
            CarouselSlider(
                items: [
                    
                  //1st Image of Slider
                     MyGoalsCard(assets: 'assets/lady_icon.png', time: '1 mins', titleone: 'Day 2: Step To Recharge',
             titletwo: 'Meditation', titlethree: "Coach- Muskan", xp: '10 XP', backgroundAssets: 'assets/violet_gradient.png',),
            
                    
                  //2nd Image of Slider
                 
                      MyGoalsCard(assets: 'assets/lady_icon.png', time: '1 mins', titleone: 'Day 2: Step To Recharge',
             titletwo: 'Meditation', titlethree: "Coach- Muskan", xp: '10 XP', backgroundAssets: 'assets/violet_gradient.png',),
            

                  
  
            ],
                
              //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
            ),
          ],
        ),
  
     Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 15,left: 8,right: 8,bottom: 8),
              child: Text("Activity Routine", style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
          
            
            MyActivityRoutineCard(assets: 'assets/ladder_icon.png', time: '1 mins', titleone: 'Gratitude',
             titletwo: 'Journal', xp: '10 XP', backgroundAssets: 'assets/red_gradient.png',),
            MyActivityRoutineCard(assets: 'assets/ball_icon.png', time: '60 mins', titleone: 'For Inner Peace',
             titletwo: 'Music', xp: '10 XP', backgroundAssets: 'assets/trans_gradient.png',)

          ],
        ),
      ),)),
    );
  }
}