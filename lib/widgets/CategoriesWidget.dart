import 'package:flutter/material.dart';

class Categorieswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView (
      scrollDirection:Axis.horizontal,
      child:Row(children: [
        for(int i=1; i < 7; i++)
        Container(
          margin:EdgeInsets.symmetric(horizontal:10),
          padding:EdgeInsets.symmetric(horizontal:5,vertical:10),
          decoration:BoxDecoration(
            color:Colors.white,
            borderRadius:BorderRadius.circular(20),
          ),
          child:Row(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("asset/$i.jpg",
                width:100,height:60,),
              Text("SAREE",style:TextStyle(fontWeight:FontWeight.bold,
                  color:Colors.black,fontSize:15),)




          ],
          ),
        )
      ],),
    );
  }
}
