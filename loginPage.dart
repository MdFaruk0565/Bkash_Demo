import 'package:bkash/Header_Part/topbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  late TextEditingController _account_controller = TextEditingController(text: "+880 1839631139");
  late TextEditingController _password_controller = TextEditingController(text: "1234");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){},
          icon: Icon(FontAwesomeIcons.arrowLeft,color: Color(0xffDF146E),),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: (){},
                child: Text('English',style: TextStyle(fontSize:18,color: Color(0xffDF146E)),)),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset("assets/images/Bkash_logo.png",height: 100,width: 100,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(FontAwesomeIcons.qrcode,color: Color(0xffDF146E),size: 55,),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(" আপনার বিকাশ একাউন্টে\n লগ ইন করুন ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextField(
                enabled: false,
                controller: _account_controller,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: " একাউন্ট নাম্বার ",
                  hintText: " একাউন্ট নাম্বার ‍দিন ",
                  labelStyle: TextStyle(fontSize: 18,color: Colors.grey),
                  hintStyle: TextStyle(fontSize: 18,color: Colors.grey),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(onPressed: (){},
                child: Text(' পিন ভুলে গিয়েছেন? ',style: TextStyle(fontSize: 18,color: Color(0xffDF146E)),),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextField(
                maxLength: 5,
                controller: _password_controller,
                keyboardType: TextInputType.number,
                obscureText: true,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  counterText: "",
                  labelText: " বিকাশ পিন ",
                  hintText: " বিকাশ পিন নাম্বার ‍দিন ",
                  labelStyle: TextStyle(fontSize: 18,color: Colors.grey),
                  hintStyle: TextStyle(fontSize: 18,color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              color: _password_controller.text.length<=3?Colors.grey:Color(0xffDF146E),
              width: double.infinity,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(_)=>TopBar()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text('পরবর্তী ',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Icon(FontAwesomeIcons.arrowRight,size: 30,color: Colors.white,),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
