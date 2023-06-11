import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/view/second_view.dart';
import 'package:project/view/top_nav.dart';

import 'activity_routine_card.dart';
import 'goals_card.dart';

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      toolbarHeight: 0,
      
     systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
  
    ),
      body: SafeArea(child: SingleChildScrollView(child: 
      Container(
          decoration: BoxDecoration(
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
          
            Container(
              margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.27,  
            child: ListView.builder(itemBuilder: (context, index){  
                return    MyGoalsCard(assets: 'assets/lady_icon.png', time: '1 mins', titleone: 'Day 2: Step To Recharge',
             titletwo: 'Meditation', titlethree: "Coach- Muskan", xp: '10 XP', backgroundAssets: 'assets/violet_gradient.png',);
            
              }, 
              itemCount: 2,
              scrollDirection: Axis.horizontal,),
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