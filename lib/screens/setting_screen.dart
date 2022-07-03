
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichatu/global/color.dart';
import 'package:ichatu/screens/user_profile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.size.height*0.18,

        backgroundColor: Color(primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),

        leading: Text(''),
        // title: Container(
        //     color: Colors.white,
        //     width: Get.size.width,
        //     height: 700,
        //     alignment: Alignment.center,
        //     child: Text('sd')),
        flexibleSpace:  Padding(
          padding: const EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 10),
          child: Column(children: [
            Row(
              children: [
                // SizedBox(width: 5),
                IconButton(onPressed: () {
                  Get.back();
                }, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,)),
                SizedBox(width: 5),
                Text('Settings',style: TextStyle(color: Colors.white,fontSize: 19),)

                // Icon(Icons.arrow_back_ios_rounded,color: Colors.white,)
              ],
            ),
            Divider(color: Colors.white,),
            Expanded(
              child: Container(
                height: Get.size.height*0.14,
                child: Container(
                  height: Get.size.height*0.1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icon(Icons.arrow_back_ios),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/images/single_chat_user.png',scale: 0.5,)),
                      Expanded(
                        flex: 5,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Laura Levy',style: TextStyle(color: Colors.white,fontSize: 17),),
                              SizedBox(height: 5,),
                              Text('Spring is coming',style: TextStyle(color: Colors.white60,fontSize: 17),),
                            ]),
                      ),

                    ],),
                ),
              ),
            )
          ]),
        ),
        // bottom: Text('data'),


      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: Image.asset('assets/images/lockkey_icon.png'),
                title: Text('Account',style: TextStyle(color: Color(0xFF51A10B),fontWeight: FontWeight.bold,fontSize: 18)),
                subtitle: Text('Privacy, security'),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Image.asset('assets/images/chat_icon.png'),
                title: Text('Chats',style: TextStyle(color: Color(0xFF51A10B),fontWeight: FontWeight.bold,fontSize: 18)),
                subtitle: Text('Chat history'),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.notifications_none,color: Color(0xFF51A10B)),
                title: Text('Notifications',style: TextStyle(color: Color(0xFF51A10B),fontWeight: FontWeight.bold,fontSize: 18)),
                subtitle: Text('Messages, group'),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.help_rounded,color: Color(0xFF51A10B)),
                title: Text('Help',style: TextStyle(color: Color(0xFF51A10B),fontWeight: FontWeight.bold,fontSize: 18)),
                subtitle: Text('Help center, contact us, privacy policy'),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text('brought to you by',style: TextStyle(fontSize: 18,color: Color(0xFF4D960B),fontWeight: FontWeight.bold),),
                    Text('ISEEU',style: TextStyle(fontSize: 18,color: Color(0xFF4D960B),fontWeight: FontWeight.bold),),
                  ]),
                ),
              )

            ],
          ),
        )
    );

  }
}
