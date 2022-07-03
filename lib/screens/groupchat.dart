
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichatu/global/color.dart';
import 'package:ichatu/screens/setting_screen.dart';

class GroupChat extends StatefulWidget {
  const GroupChat({Key? key}) : super(key: key);

  @override
  State<GroupChat> createState() => _GroupChatState();
}

class _GroupChatState extends State<GroupChat> {

  var msg=[
    {'message':'Are you still travelling?','user':'1','image':'assets/images/single_chat_user.png'},
    {'message':'Yes, i’m at Istanbul..','user':'0'},
    {'message':'OoOo, Thats so Cool!','user':'2','image':'assets/images/user_2.png'},
    {'message':'Raining??','user':'2','image':'assets/images/user_2.png'},
    {'message':'OoOo, Thats so Cool!','user':'0'},
    {'message':'Hi,Did you heared?','user':'1','image':'assets/images/single_chat_user.png'},
  ].toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.size.height*0.12,

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
                          flex: 1,
                          child: IconButton(onPressed: () {
                            Get.back();
                          }, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,)),),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/images/single_chat_user.png')),
                      Expanded(
                        flex: 5,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('EVA Team',style: TextStyle(color: Colors.white),),
                              Text('Paul, John Smith, lauren, Joe',style: TextStyle(color: Colors.white60),),
                            ]),
                      ),

                      Expanded(
                          flex: 1,
                          child: PopupMenuButton<int>(
                            color: Color(primaryColor),
                            position: PopupMenuPosition.over,


                            itemBuilder: (context)=>[
                              PopupMenuItem(
                                  value: 1,
                                  child: Text('Group info',style: TextStyle(color: Colors.white),)),
                              PopupMenuItem(
                                  value: 2,
                                  child: Text('Search',style: TextStyle(color: Colors.white),)),
                              PopupMenuItem(
                                  value: 3,
                                  child: Text('Mute notifications',style: TextStyle(color: Colors.white))),
                              PopupMenuItem(
                                  value: 4,
                                 enabled: false,
                                  child: PopupMenuButton<int>(
                                    color: Color(primaryColor),

                                    position: PopupMenuPosition.under,


                                    itemBuilder: (context)=>[
                                      PopupMenuItem(
                                          value: 5,
                                          child: Text('Report',style: TextStyle(color: Colors.white),)),
                                      PopupMenuItem(
                                          value: 6,
                                          child: Text('Exit group',style: TextStyle(color: Colors.white),)),
                                      PopupMenuItem(
                                          value: 7,
                                          child: Text('Clear chat',style: TextStyle(color: Colors.white))),
                                      PopupMenuItem(
                                          value: 8,
                                          child: Text('Export chat',style: TextStyle(color: Colors.white))),
                                      PopupMenuItem(
                                          value: 9,
                                          child: Text('Add shortcut',style: TextStyle(color: Colors.white))),

                                    ],
                                    child:  Row(
                                      mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('More',style: TextStyle(color: Colors.white)),
                                          Icon(Icons.arrow_forward_ios_rounded)
                                        ]),
                                  ),
                                  // child: Row(
                                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //   mainAxisSize: MainAxisSize.max,
                                  //   children: [
                                  //   Text('More',style: TextStyle(color: Colors.white)),
                                  //
                                  // ],)
                              ),
                            ],
                            child:  Image.asset('assets/images/menu_icon.png'),
                          )),

                    ],),
                ),
              ),
            )
          ]),
        ),
        // bottom: Text('data'),


      ),
      body: ListView.builder(
        itemCount: msg.length,
        itemBuilder: (context, index) {
          if(msg[index]['user']=='0'){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF53270A),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('${msg[index]['message']}',style: TextStyle(color: Colors.white),),
                      ))
                ],),
            );
          }
          else{
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(SettingScreen());
                    },
                      child: CircleAvatar(child: Image.asset(msg[index]['image'].toString()),)),
                  SizedBox(width: 3,),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF4D960B),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20),topLeft: Radius.circular(20))

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('${msg[index]['message']}',style: TextStyle(color: Colors.white),),
                      ))
                ],),
            );
          }

        },),
      bottomSheet: Container(
          width: Get.size.width,
          height: Get.size.height*0.08,
          // color: Colors.orange,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFE7E7E7),
                      borderRadius: BorderRadius.circular(30)
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Send Message',
                          fillColor: Colors.deepOrange,
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: CircleAvatar(
                      backgroundColor: Color(0xFF51A10B),
                      child: Icon(Icons.send,color: Colors.white,)))
            ],),
          )
      ),
    );

  }
}
