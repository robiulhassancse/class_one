import 'package:class_one/Fragement/HomeFragement.dart';
import 'package:class_one/Fragement/MessageFragement.dart';
import 'package:class_one/Fragement/NotificationFragement.dart';
import 'package:class_one/Fragement/SearchFragement.dart';
import 'package:class_one/Fragement/SettingFragement.dart';
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
    @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Apps'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: ('Home'),),
                Tab(icon: Icon(Icons.message),text: ('Message'),),
                Tab(icon: Icon(Icons.search),text: ('Search'),),
                Tab(icon: Icon(Icons.notification_add),text: ('Notification'),),
                Tab(icon: Icon(Icons.settings),text: ('Setting'),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragement(),
              MessageFragement(),
              SearchFragement(),
              NotificationFragement(),
              SettingFragement()
            ],
          ),
        )
    );
  }
}
