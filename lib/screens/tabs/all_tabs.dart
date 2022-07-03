

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichatu/screens/singlechat.dart';

class AllTabs extends StatelessWidget {
  const AllTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.person_add_alt_1)),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: (){
                Get.to(SingleChat());
              },
              title: Text('Connor Frazier'),
              subtitle: Text('What kind of music do you like and what app do you use'),
              leading: ClipRect(child: Container(
                width: Get.size.width*0.13,
                  height: Get.size.width*0.13,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17)

                  ),

                  child: Image.asset('assets/images/user_image.png'))),
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
