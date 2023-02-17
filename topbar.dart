import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
             height: MediaQuery.of(context).size.height*0.5,
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                     flex: 2,
                     child: Container(
                   decoration: BoxDecoration(
                     color: Colors.pink,
                     image: DecorationImage(image: AssetImage('assets/images/Square.png'))
                   ),
                   child: CircleAvatar(radius: 30,backgroundColor: Colors.transparent, child: Icon(Icons.person,size: 25,color: Colors.white,),),
                 )),
                 Expanded(
                     flex: 2,
                   child: Container(
                     color: Colors.white,
                     height: MediaQuery.of(context).size.height*0.08,
                     width: MediaQuery.of(context).size.width*0.2,
                   ),
                     ),
                 Expanded(
                     flex: 2,
                     child: Container(
                   decoration: BoxDecoration(
                     color: Colors.pink,
                     image: DecorationImage(image: AssetImage('assets/images/Square.png'))
                   ),
                   child: CircleAvatar(radius: 30,backgroundColor: Colors.transparent, child: Icon(Icons.person,size: 25,color: Colors.white,),),
                 )),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
