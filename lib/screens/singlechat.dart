
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichatu/global/color.dart';
import 'package:ichatu/screens/user_profile.dart';

class SingleChat extends StatefulWidget {
  const SingleChat({Key? key}) : super(key: key);

  @override
  State<SingleChat> createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {

  var msg=[
    {'message':'Are you still travelling?','user':'1'},
    {'message':'Yes, i’m at Istanbul..','user':'0'},
    {'message':'OoOo, Thats so Cool!','user':'1'},
    {'message':'Raining??','user':'1'},
    {'message':'OoOo, Thats so Cool!','user':'0'},
    {'message':'Hi,Did you heared?','user':'1'},
  ].toList();
  var searchToggle=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.size.height*0.16,

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
                SizedBox(width: 18),
                IconButton(onPressed: () {
                  Get.back();
                }, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,)),

                // Icon(Icons.arrow_back_ios_rounded,color: Colors.white,)
              ],
            ),
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

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    // Icon(Icons.arrow_back_ios),
                      Flexible(
                        flex: 2,
                          child: Image.asset('assets/images/single_chat_user.png')),
                      Visibility(
                        visible: searchToggle,
                        child: Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {
                              Get.to(UserProfile());
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text('Lara Mueller',style: TextStyle(color: Colors.white),),
                              Text('+49 1522 792358',style: TextStyle(color: Colors.white),),
                            ]),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: !searchToggle,
                        child: Expanded(
                        flex: 10,
                        child:  Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFF4D960B),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(children: [
                            Expanded(
                                flex: 1,
                                child: InkWell(
                                    onTap: () {
                                      searchToggle=!searchToggle;
                                      setState(() {
                                        searchToggle;
                                      });
                                    },
                                    child: Icon(Icons.search,color: Colors.white,))),
                            Expanded(
                              flex: 5,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search...',
                                    hintStyle: TextStyle(color: Colors.white)
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child: Image.asset('assets/images/filter.png',color: Colors.white,))),
                          ]),

                        )
                      ),),
                      Visibility(
                        visible: searchToggle,
                        child: Expanded(
                          flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  searchToggle=!searchToggle;
                                });
                              },
                                child: Image.asset('assets/images/search_icon.png'))),
                      ),
                      // Visibility(child: ),
                      Visibility(
                        visible: searchToggle,
                        child: Expanded(
                          flex: 1,
                            child:PopupMenuButton<int>(
                              color: Color(primaryColor),
                              itemBuilder: (context)=>[
                                PopupMenuItem(
                                value: 1,
                                child: Text('Settings',style: TextStyle(color: Colors.white),)),
                                PopupMenuItem(
                                    value: 2,
                                    child: Text('New Group',style: TextStyle(color: Colors.white),)),
                                PopupMenuItem(
                                    value: 3,
                                    child: Text('New broadcast',style: TextStyle(color: Colors.white))),
                                PopupMenuItem(
                                    value: 4,
                                    child: Text('Starred messages',style: TextStyle(color: Colors.white))),
                              ],
                              child:  Image.asset('assets/images/menu_icon.png'),
                            ),
                        ),
                      ),

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
          if(msg[index]['user']=='1'){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
          else{
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
