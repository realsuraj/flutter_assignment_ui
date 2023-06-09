import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopNav extends StatefulWidget {
  const TopNav({ Key? key }) : super(key: key);

  @override
  State<TopNav> createState() => _TopNavState();
}

class _TopNavState extends State<TopNav> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      child: Row(
        children: [
          Container(
             decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.only(left: 10,right: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue.shade100),
              height: 50,
              width: 50,
              child: Image.asset("assets/profile_icon.png")),
          ),

            //second view

           Container(
               decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(10)
            ),

             child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
               child: Column(
                children: [
                    Container(
                        decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(10)),
                            
                            width: MediaQuery.of(context).size.width ,
                            margin: EdgeInsets.only(right: 10),
                            child: Text(''),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 20),
                            child: Text("1090 XP", style: TextStyle(fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                  margin: EdgeInsets.only(left: 10,top: 4),

                child: Text("Level 9"),
          ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                child: Text("30 XP to Level 10"),
          )
                ],
               )
                ],
               ),
             ),
           )
        ],
      ),
    );
  }
}