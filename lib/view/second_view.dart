import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  const SecondView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      child: Container(
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),

          image: DecorationImage(
            image: AssetImage("assets/blue_gradient.png"),
            fit: BoxFit.cover,
          ),),
        margin: EdgeInsets.all(2 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Text("Your Level premium is about to \n expire, renew now",
              style: TextStyle(color: Colors.white),),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
               decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10)
            ),
              child: TextButton(onPressed: (){}, child: Text("Explore →", 
              style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}