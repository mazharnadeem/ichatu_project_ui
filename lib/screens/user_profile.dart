
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichatu/global/color.dart';

class UserProfile extends StatelessWidget {
  // const UserProfile({Key? key}) : super(key: key);

  var msg=[
    {'message':'Are you still travelling?','user':'1'},
    {'message':'Yes, i’m at Istanbul..','user':'0'},
    {'message':'OoOo, Thats so Cool!','user':'1'},
    {'message':'Raining??','user':'1'},
    {'message':'OoOo, Thats so Cool!','user':'0'},
    {'message':'Hi,Did you heared?','user':'1'},
  ].toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.size.height*0.30,

        backgroundColor: Color(primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),

        leading: Text(''),

        flexibleSpace:  Padding(
          padding: const EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Expanded(
              child: Container(
                height: Get.size.height*0.14,
                child: Container(
                  height: Get.size.height*0.1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icon(Icons.arrow_back_ios),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/images/profile.png')),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // SizedBox(height: 10),
                            Text('Lara Mueller',style: TextStyle(color: Colors.white,fontSize: 21),),
                            Text('+49 1522 792358',style: TextStyle(color: Colors.white60,fontSize: 21),),
                            SizedBox(height: 15),
                          ]),


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
              title: Text('Info',style: TextStyle(color: Color(0xFF51A10B),fontWeight: FontWeight.bold,fontSize: 18)),
              subtitle: Text('Spring is coming 🌱'),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.notifications_none,color: Color(0xFF51A10B)),
              title: Text('Notifications',style: TextStyle(color: Color(0xFF51A10B),fontWeight: FontWeight.bold,fontSize: 18)),
              subtitle: Text('On'),

              // isThreeLine: true,
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xFF51A10B)),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Image.asset('assets/images/message_icon.png'),
              title: Text('Self Deleting Mesages',style: TextStyle(color: Color(0xFF51A10B),fontWeight: FontWeight.bold,fontSize: 18)),
              subtitle: Text('On'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xFF51A10B)),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Image.asset('assets/images/music_icon.png'),
              title: Text('Custom notifications',style: TextStyle(color: Color(0xFF51A10B),fontWeight: FontWeight.bold,fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xFF51A10B)),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Image.asset('assets/images/lock_icon.png'),
              title: Text('Encryption',style: TextStyle(color: Color(0xFF51A10B),fontWeight: FontWeight.bold,fontSize: 18)),
              subtitle: Text('Messages and calls are end-to-end encrypted. Tap to verify'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xFF51A10B)),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
                child: Text('2 Groups in common')),
            SizedBox(height: 10,),
            Row(
              children: [
                Image.asset('assets/images/single_chat_user.png'),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('EVA Team',style: TextStyle(color: Color(0xFF51A10B),fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(height: 5,),
                  Text('Paul, John Smith, lauren, Joe'),
                ],)
              ],
            )

          ],
        ),
      )
    );
  }
}
