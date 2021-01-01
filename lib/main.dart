import 'package:error_states/screens/10_connection_lost.dart';
import 'package:error_states/screens/11_broken_link.dart';
import 'package:error_states/screens/12_artical_not_found.dart';
import 'package:error_states/screens/13_no_space.dart';
import 'package:error_states/screens/14_no_result_found.dart';
import 'package:error_states/screens/15_payment_faild.dart';
import 'package:error_states/screens/16_time_error.dart';
import 'package:error_states/screens/17_location_error.dart';
import 'package:error_states/screens/18_router_offline.dart';
import 'package:error_states/screens/1_no_connection.dart';
import 'package:error_states/screens/20_no_file.dart';
import 'package:error_states/screens/21_camera_access.dart';
import 'package:error_states/screens/2_404_error.dart';
import 'package:error_states/screens/3_something_went_wrong.dart';
import 'package:error_states/screens/4_file_not_found.dart';
import 'package:error_states/screens/6_error.dart';
import 'package:error_states/screens/7_error_2.dart';
import 'package:error_states/screens/8_404_error_2.dart';
import 'package:error_states/screens/9_location_access.dart';
import 'package:flutter/material.dart';
import 'screens/19_connection_faild.dart';
import 'screens/5_something_wrong.dart';

List<Widget> screenList = [
  NoConnectionScreen(),
  Error404Screen(),
  Error404Screen2(),
  SomethingWentWrongScreen(),
  FileNotFoundScreen(),
  SomethingWrongScreen(),
  ErrorScreen(),
  Error2Screen(),
  LocationAccessScreen(),
  ConnectionLostScreen(),
  BrokenLinkScreen(),
  ArticleNotFoundScreen(),
  NoSpaceScreen(),
  NoResultFoundScreen(),
  PaymentFaildScreen(),
  TimeErrorScreen(),
  LocationErrorScreen(),
  RouterOfflineScreen(),
  ConnectionFaildScreen(),
  NoFileScreen(),
  CameraAccessScreen(),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '20 Flutter Error State Pages',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Swipe to check the next Screen
      home: PageView.builder(
          itemCount: screenList.length,
          itemBuilder: (context, index) {
            return screenList[index];
          }),
    );
  }
}
