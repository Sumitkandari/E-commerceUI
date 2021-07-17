import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerceui/pages/tabicon.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
     Color _iconColor = Colors.grey;
     int _isselected=0;
  GlobalKey _bottomNavigationKey=GlobalKey();
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.purple,
        child: Icon(Icons.qr_code_scanner_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _builderBottomTab(),
      
     
      body: Container(
        color: Colors.white,
        child: Center(child: Text("hello"))),
      
    );
  }
  _builderBottomTab(){
    return BottomAppBar(
      
      
      shape:  AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(
            side: BorderSide(

            ),
          ),
        ),
              
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
          // IconButton(
                
          //       iconSize: 30.0,
          //       padding: EdgeInsets.only(left: 28.0),
          //       icon: Icon(Icons.home,color:_iconColor,),
          //       onPressed: () {
                  
          //           _iconColor=Colors.purple;
          //         setState(() {
                    
          //         });
          //       },
          //     ),
          //      IconButton(
                
          //       iconSize: 30.0,
          //       padding: EdgeInsets.only(left: 28.0),
          //       icon: Icon(Icons.home,color:_iconColor,),
          //       onPressed: () {
                  
          //           _iconColor=Colors.purple;
          //         setState(() {
                    
          //         });
          //       },
          //     ),

         Tabitems(icon:Icons.home,isselected: _isselected==0 ,onTap:(){
          setState(() {
             _isselected=0;
          });
         },),
         Tabitems(icon:Icons.list,isselected: _isselected==1 ,onTap: (){
           setState(() {
             
           _isselected=1;
           });
         },),
         SizedBox(
           width:20
       ),
         Tabitems(icon:Icons.shopping_bag,isselected: _isselected==2 ,onTap: (){
           setState(() {
             _isselected=2;
           });
         },),
         Tabitems(icon:Icons.photo,isselected: _isselected==3 ,onTap: (){
           setState(() {
             _isselected=3;
           });
         },),
         
         
         
         
         ]
        
      )
    );
  }
}