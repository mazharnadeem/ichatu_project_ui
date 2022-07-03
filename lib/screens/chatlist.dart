
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ichatu/global/color.dart';
import 'package:ichatu/screens/tabs/all_tabs.dart';
import 'package:ichatu/screens/tabs/chat_tabs.dart';
import 'package:ichatu/screens/tabs/group_tabs.dart';

class ChatList extends StatefulWidget {
  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  // const ChatList({Key? key}) : super(key: key);
  var searchShow=false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,

            bottom: TabBar(
              tabs: [
                Tab(child: Text('ALL',style: TextStyle(color: Colors.black),)),
                Tab(child: Text('CHATS',style: TextStyle(color: Colors.black),)),
                Tab(child: Text('GROUPS',style: TextStyle(color: Colors.black),)),
              ],
              indicator: UnderlineTabIndicator(

                borderSide: BorderSide(width: 3,color: Color(primaryColor)),
                  insets: EdgeInsets.symmetric(horizontal:25.0)
              ),
            ),
            elevation: 0,
            toolbarHeight: Get.size.height*0.07,
            // surfaceTintColor: Colors.deepOrangeAccent,

            // leading: Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //
            //   children: [
            //     Expanded(child: Image.asset('assets/images/app_logo.png')),
            //     Expanded(child: Image.asset('assets/images/app_logo.png')),
            //     Expanded(child: Image.asset('assets/images/app_logo.png')),
            //     Expanded(child: Image.asset('assets/images/app_logo.png')),
            //   ],
            // ),
            // titleSpacing: 0,
            leading: Text(''),
            flexibleSpace: Container(
              height: Get.size.height*0.07,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                        child: Image.asset('assets/images/app_logo.png')),
                    Visibility(
                      visible: !searchShow,
                      child: Expanded(
                        flex: 2,
                          child: Text(' I Chat U',style: GoogleFonts.ubuntu(color: Color(primaryColor),fontSize: 19),)),
                    ),
                    Expanded(
                      flex: 6,
                        child: searchShow==false?Wrap(
                          alignment: WrapAlignment.end,
                         // crossAxisAlignment: WrapCrossAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                searchShow=!searchShow;
                                setState(() {
                                  searchShow;
                                });
                              },
                              child: CircleAvatar(
                                child: Icon(
                                    Icons.search,color: Colors.black
                                ),
                                backgroundColor: Color(0xFFF6F5FF),
                              ),
                            )
                          ]
                        ):Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: Get.height,
                            decoration: BoxDecoration(
                              color: Color(0xFF4D960B),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(children: [
                              Expanded(
                                flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      searchShow=!searchShow;
                                      setState(() {
                                        searchShow;
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
                                      // child: DropdownButton(
                                      //   items: ['items','mazhar','nadeem'].map((String items) {
                                      //     return DropdownMenuItem(
                                      //       value: items,
                                      //       child: Text(items),
                                      //     );
                                      //   }).toList(),
                                      //   icon: Icon(Icons.help_rounded),
                                      //   onChanged: (val){},
                                      // ),))
                                      // child: ExpansionTile,
                                      child: Image.asset('assets/images/filter.png'))),
                            ]),

                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            // centerTitle: false,
            // titleSpacing: 0,
            //
            //
            // title: Row(
            //
            //   children: [
            //     Expanded(child: Image.asset('assets/images/app_logo.png')),
            //   ],
            // ),
            // // leadingWidth: double.infinity,

            // actions: [
            //   Text('data')
            // ],
            // title: Text('Maz'),
          ),
          body: TabBarView(children: [
            AllTabs(),
            AllTabs(),
            // ChatTabs(),
            GroupTabs()
          ]),
        ),
      ),
    );
  }
}
