
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ichatu/global/color.dart';
import 'package:ichatu/screens/chatlist.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 80,bottom: 80,left: 30,right: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/app_logo.png'),
                SizedBox(height: 10,),
                Text('Welcome Back',style: GoogleFonts.poppins(fontSize: 30,color: Color(primaryColor),fontWeight: FontWeight.bold),),
                // SizedBox(height: 5,),
                Text('Login to your account',style: GoogleFonts.poppins(fontSize: 14,color: Color(primaryColor)),),
                SizedBox(height: 5,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(formColor),
                      borderRadius: BorderRadius.circular(100)
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                         border: InputBorder.none,
                        prefixIcon: Icon(Icons.person,color: Color(primaryColor)),
                        hintText: 'Email/User ID'

                      ),),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(formColor),
                      borderRadius: BorderRadius.circular(100)
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock,color: Color(primaryColor)),
                          hintText: 'Password'

                      ),),
                  ),
                ),
                SizedBox(height: 5,),
                InkWell(
                  onTap: () {
                    Get.to(ChatList());

                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(primaryColor),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Center(
                      child: Wrap(children: [
                        Text('Sign In',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_forward,color: Colors.white),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: 85,),
                Text('Brought to you by ISEEU',style: GoogleFonts.poppins(fontSize: 20,color: Color(primaryColor),fontWeight: FontWeight.bold),),





              ]),
        ),
      ),
    );
  }
}
