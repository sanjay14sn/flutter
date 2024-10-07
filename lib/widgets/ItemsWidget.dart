import 'package:flutter/material.dart';

class Itemswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(childAspectRatio: 1.3,
      physics:NeverScrollableScrollPhysics(),
      crossAxisCount:3,
      shrinkWrap: true,
      children: [
        for (int i=1;i<7;i++)
        Container(
          padding:EdgeInsets.only(left:15,right:10),
          margin:EdgeInsets.symmetric(vertical:8,horizontal: 10),
          decoration: BoxDecoration(
            color:Colors.white24,
            borderRadius:BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration:BoxDecoration(
                      color:Colors.black,
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child:Text("-63%",style:TextStyle(
                      fontSize:14,
                      color:Colors.purpleAccent,
                      fontWeight:FontWeight.bold
                    ),),


                  ),
                  Icon(Icons.favorite_border,color:Colors.redAccent,)
                ],
              ),
              InkWell(
                onTap: (){},
                child:Container(
                  margin: EdgeInsets.all(10),
                  child:Image.asset('assets1/$i.jpg',
                      height:115,width: 150,),

                ),
              ),
              Container(
                padding:EdgeInsets.only(bottom:3),
                alignment:Alignment.center,
                child:Text("Roadster",style:TextStyle(fontSize:18,
                    color:Colors.black,
                    fontWeight:FontWeight.bold),
                ),
              ),
              Divider(color:Colors.black,thickness:0.10,),
              Container(
                alignment:Alignment.centerLeft,
                child:(Text('Elegance never goes out',
                  style:TextStyle(color:Colors.purpleAccent,fontSize:12,
                      fontWeight:FontWeight.bold,
                      fontStyle:FontStyle.italic),)),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical:10),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rs.430',style:TextStyle(color:Colors.green,fontSize:15,
                      fontWeight:FontWeight.bold),)
                ],
                
              ),),
              
          Padding(padding: EdgeInsets.symmetric(vertical:1),
          child:Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              FilledButton(onPressed: (){print("done");},
                child:ListTile(
                  title:Text('ADD TO BAG',
                    style:TextStyle(color:Colors.white,),),
                  leading:Icon(Icons.shopping_bag,color:Colors.white,),
                ))
            ],
          ),)
              
              
              
            ],
          ),

        )
      ],

    );
  }
}
