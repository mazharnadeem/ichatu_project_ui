
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichatu/screens/groupchat.dart';

class GroupTabs extends StatefulWidget {
  const GroupTabs({Key? key}) : super(key: key);

  @override
  State<GroupTabs> createState() => _GroupTabsState();
}

class _GroupTabsState extends State<GroupTabs> {

  var floatToggle=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
          children: [
        Visibility(
              visible: !floatToggle,
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                  },child: Image.asset('assets/images/messages_icon.png')),
            ),
        SizedBox(height: 15,),
        Visibility(
              visible: !floatToggle,
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      floatToggle=!floatToggle;
                    });
                  },child: Image.asset('assets/images/clear_icon.png')),
            ),
        Visibility(
          visible: floatToggle,
            child: SizedBox(height: 15,)),
        Visibility(
          visible: floatToggle,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
              onPressed: () {
              setState(() {
                floatToggle=!floatToggle;
              });
              },child: Image.asset('assets/images/plus_icon.png')),
        )
      ]),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Get.to(GroupChat());
              },
              title: Text('Connor Frazier'),
              subtitle: Text('What kind of music do you like and what app do you use'),
              leading: ClipRect(child: Container(
                  width: Get.size.width*0.14,
                  height: Get.size.width*0.14,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100)
                  ),

                  child: Image.asset('assets/images/user_image.png',fit: BoxFit.fill,))),
              trailing: Column(children: [
                Text('7:11 PM'),
                SizedBox(height: 8,),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(7)

                  ),

                  child: Center(child: Text('${index+1}')),)
              ]),
            ),
          );
        },),
    );
  }
}
