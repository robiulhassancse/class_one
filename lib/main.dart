import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  MyAlertDialog(context) {
    return showDialog(context: context, builder: (BuildContext context) {
      return Expanded(child: AlertDialog(
        title: Text('Warning!!'),
        content: Text('Do you love me!!'),
        actions: [
          TextButton(onPressed: (){
            MySnackBar('Yes I will do', context);
            Navigator.of(context).pop();
            },
              child: Text('Yes')),
          TextButton(onPressed: (){
            Navigator.of(context).pop();
            },
              child: Text('No')),
        ],
      ));
    });
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
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              ElevatedButton(

                child: Text('Press'),
                onPressed: () {MyAlertDialog(context);},
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(decoration: InputDecoration(
                  labelText: 'Last  Name',
                  border: OutlineInputBorder(),),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(decoration: InputDecoration(
                  labelText: 'Email Name',
                  border: OutlineInputBorder(),),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(double.infinity, 60)
                  ),
                  onPressed: (){MySnackBar('Tumi Click korla kn?', context); },child: Text('Click Here'),)
              )






            ],
          ),
        ),
        
    );
  }
}
