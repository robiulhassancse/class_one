
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  MyAlertDialog(context){
    return showDialog(context: context,
        builder: (BuildContext context){
      return Expanded(child: AlertDialog(
        title: Text('Alert!'),
        content: Text('Do you want to delete!'),
        actions: [
          TextButton(onPressed: (){
            MySnackBar('Delete Successful',context);
            Navigator.of(context).pop();
            }, child: Text('Yes')),
          TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('No'))
        ],
      ));
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory App'),
        titleSpacing: 14,
        // centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          // backgroundColor: Colors.green
        ),
        backgroundColor: Colors.green,
        elevation: 7,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.blue,
            padding: EdgeInsets.all(16),

          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.email),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add),
          ),
        ],
      ),

      body: Center(
        child: ElevatedButton(
          child: Text('Press'), onPressed: (){MyAlertDialog(context);},
        ),
      )



    );
  }
}
