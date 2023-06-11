import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGoalsCard extends StatelessWidget {
   final String titleone, titletwo,titlethree, xp, time, assets,backgroundAssets;
  const MyGoalsCard({ Key? key, required this.titleone, required this.titletwo, required this.titlethree, required this.xp, required this.time, required this.assets, required this.backgroundAssets }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 180,
        width: 350,
            margin: const EdgeInsets.all(2),

       decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),

          image: DecorationImage(
            image: AssetImage(backgroundAssets),
            fit: BoxFit.cover,
          ),),
        child: Stack(
         children: [
          Container(
            margin: EdgeInsets.all(9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleone, style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,fontSize: 19),),
                Text(titletwo, style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w300,fontSize: 15),),
                Text(titlethree, style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w300,fontSize: 15),),

              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
            margin: EdgeInsets.all(9),

              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/light.png")),
                  Text(xp, style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(
                  width: 30,
                ),
                   Container(
                     height: 20,
                    width: 20,
                    child: Image.asset("assets/clock.png")),
                  Text(time, style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,fontSize: 15),)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(assets),)
         ],
        ),
      ),
    );
  }
}