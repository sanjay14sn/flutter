import 'package:flutter/material.dart';
import 'package:untitled7/widgets/LoginPage.dart';

class Homeappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.purpleAccent,
      padding:EdgeInsets.all(15),
      child: Row(
        children: [FloatingActionButton(child:Icon(Icons.dashboard_sharp),
          onPressed: (){print("done");}),

          Padding(padding: EdgeInsets.only(left:10),
            child:Row(
              children: [
                SizedBox(width:30,),
                Text("NYSARGAA",
                  style:TextStyle(fontSize:24,color:Colors.white,fontStyle:FontStyle.italic),
                ),
                SizedBox(width: 1000
                ),
            Padding(padding: EdgeInsets.only(right:100),
              child:Column(
                children: <Widget>[

                  ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => Loginpage()));},
                    //style:ElevatedButton.styleFrom(
                      //backgroundColor: Colors.tealAccent[800],
                      //padding:EdgeInsets.symmetric(horizontal:50,vertical: 15),),
                    child:Text(
                      'LOGIN',style:TextStyle(color:Colors.black,fontSize:17),
                    ),)
                ],
              ),
            ) ],
            ),
          ),
        ],
      ),
    );

  }
}



