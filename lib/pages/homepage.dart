import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerceui/pages/tabicon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<IconData> _icons=[
    FontAwesomeIcons.shirtsinbulk,
    FontAwesomeIcons.shoePrints,
    FontAwesomeIcons.shoppingBag,
    FontAwesomeIcons.hatCowboy,
    FontAwesomeIcons.phone,
    FontAwesomeIcons.baseballBall,
    FontAwesomeIcons.watchmanMonitoring,
    FontAwesomeIcons.paintBrush,
    


  ];
  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex=index;
        });
      },
          child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: index==_selectedIndex?Theme.of(context).accentColor:Colors.grey[200],
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(_icons[index], 
        size:25.0,
        color: index ==_selectedIndex?Colors.purple[100]:Colors.grey[800],
        )
        ),
    );
  }
   
     Color _iconColor = Colors.grey;
     int _isselected=0;
  GlobalKey _bottomNavigationKey=GlobalKey();
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical:35),
            child: _searchBox(),
             ),
             
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _icons.length,
                itemBuilder:(BuildContext context,int index){
                  return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex=index;
        });
      },
          child: Container(
            margin: EdgeInsets.all(10),
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: index==_selectedIndex?Theme.of(context).accentColor:Colors.grey[200],
          borderRadius: BorderRadius.circular(40.0),
        ),
        
        child: Icon(_icons[index], 
        size:30.0,
        color: index ==_selectedIndex?Colors.purple[100]:Colors.grey[800],
        )
        ),
        
    );



                } 
                ),
            )

        ],
      )

    );
    }
    _searchBox(){
      return Container(
        
        margin: EdgeInsets.only(left:20,right: 20),

        
        child: Theme(
          data:Theme.of(context).copyWith(
              accentColor: Colors.purple,
          ),
                  child: TextField(
            
            
            decoration: InputDecoration(
              hintText: "Search Product",
              prefixIcon: Icon(Icons.search,size: 30,),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.all(20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey[200])
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.white)
              )

              
              
            ),
          ),
        ),
      );
    }
}
      