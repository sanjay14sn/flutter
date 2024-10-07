import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled7/widgets/CategoriesWidget.dart';
import 'package:untitled7/widgets/Design.dart';
import 'package:untitled7/widgets/HomeAppBar.dart';
import 'package:untitled7/widgets/ItemsWidget.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // List of local image paths
  final List<String> imagePaths = [
    'assets/pexels-daredevil-27139277.jpg',
    'assets/101441-pongal-outfits.jpeg',
    'assets/mngko_1200.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Homeappbar(),
          Container(
           // height: 500, // Increased height to fit the carousel
            //padding: EdgeInsets.only(top: 25),
            //decoration: BoxDecoration(
              //color: Colors.white,
              //borderRadius: BorderRadius.only(
                //topLeft: Radius.circular(35),
                //topRight: Radius.circular(35),
             // ),
            //),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8.0)),
                // Add the CarouselSlider widget here
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0, // Height of the carousel
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.linearToEaseOut,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.5,
                  ),
                  items: imagePaths.map((path) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(path, fit: BoxFit.cover, width: 1000),
                      ),
                    );
                  }).toList(),
                ),

                //Drawer(backgroundColor:Colors.black,),
                Container(
                  alignment:Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20,),
                  child: Text("Categories",style:TextStyle
                    (fontSize:25,fontWeight:FontWeight.bold,color:Colors.black),),
                ),
                Categorieswidget(),
            Container(
              alignment:Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical:10),
              child: Text("  Best Selling",style:TextStyle(
                fontWeight:FontWeight.bold,
                fontSize:25,
                color:Colors.black

              ),),

            ),
            Itemswidget(),
            Container(
              alignment:Alignment.centerLeft,
              margin:EdgeInsets.symmetric(horizontal:15,vertical: 10),
              child:Text("Best Saree Designs",style:TextStyle(color:Colors.black,fontSize:25,
                  fontWeight:FontWeight.bold),),
            ),
            Design(),

              ],
            ),
          ),
        ],
      ),
    );
  }
  
}


