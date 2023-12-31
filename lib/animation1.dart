import 'package:bottom_navigation/samplepages.dart';
import 'package:flutter/material.dart';
import 'package:global_bottom_navigation_bar/global_bottom_navigation_bar.dart';



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGlobalBottomNavigation(
      listOfChild: [
        HomePage(),

      ],
      listOfBottomNavigationItem: buildBottomNavigationItemList(),
    );
  }

  List<BottomNavigationItem> buildBottomNavigationItemList() => [
    BottomNavigationItem(
      activeIcon: Icon(
        Icons.notifications_active,
        color: Colors.amber,
        size: 18,
      ),
      inActiveIcon: Icon(
        Icons.notifications_none,
        color: Colors.grey,
        size: 21,
      ),
      title: 'explore',
      color: Colors.white,
      vSync: this,
    ),
    BottomNavigationItem(
      activeIcon: Icon(
        Icons.perm_camera_mic,
        color: Colors.amber,
        size: 18,
      ),
      inActiveIcon: Icon(
        Icons.perm_contact_calendar,
        color: Colors.grey,
        size: 21,
      ),
      title: 'favorite',
      color: Colors.white,
      vSync: this,
    ),
    BottomNavigationItem(
      activeIcon: Icon(
        Icons.person_pin,
        color: Colors.amber,
        size: 18,
      ),
      inActiveIcon: Icon(
        Icons.person_outline,
        color: Colors.grey,
        size: 21,
      ),
      title: 'learn',
      color: Colors.white,
      vSync: this,
    ),
    BottomNavigationItem(
      activeIcon: Icon(
        Icons.star,
        color: Colors.amber,
        size: 18,
      ),
      inActiveIcon: Icon(
        Icons.star_border,
        color: Colors.grey,
        size: 21,
      ),
      title: 'notifications',
      color: Colors.white,
      vSync: this,
    ),
    BottomNavigationItem(
      activeIcon: Icon(
        Icons.voice_chat,
        color: Colors.amber,
        size: 18,
      ),
      inActiveIcon: Icon(
        Icons.edit,
        color: Colors.grey,
        size: 21,
      ),
      title: 'more',
      color: Colors.white,
      vSync: this,
    ),
  ];
}
//flutter pub publish --dry-run