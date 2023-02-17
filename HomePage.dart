import 'dart:async';

import 'package:flutter/material.dart';

import 'loginPage.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_page()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDF146E),
      body: Column(
        children: [

          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/images/bkash_logo1.wine.png',height:400,width: 400,),),
          SizedBox(height: 250),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 18,
                width: 100,
                child:  LinearProgressIndicator(color: Colors.white,backgroundColor: Color(0xffE3106E),),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
