import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyListApp extends StatelessWidget {
   MyListApp({Key? key}) : super(key: key);

     List names = [
      'Ama','Kofi','Yaw','Akos','Kwaku'];

      List users = [
        {
          'name':'Gifty',
          'age': '18'
        },
        {
          'name':'Roland',
          'age': '20'
        },
        {
          'name':'Emmanuel',
          'age': '17'
        },
        {
          'name':'Mensah',
          'age': '35'
        },
        
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        itemBuilder:(context, index) {
          return ListTile(
            leading: CircleAvatar(),
            title: Text(users[index]['name']),
            subtitle: Text('am going home'),
            trailing: Column(
              children: [
                Text('10:00'),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                  child: Text(index.toString()),
                )
              ],
            ),
          );
        }
      ),
     );
  }
}