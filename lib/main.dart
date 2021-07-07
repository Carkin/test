import 'package:flutter/material.dart';
import 'package:tanzen/home_page/home_page_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'home_page/home_page_widget.dart';
import 'lessons/lessons_widget.dart';
import 'social_dance3/social_dance3_widget.dart';
import 'user_profile/user_profile_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tanzen',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NavBarPage(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'HomePage';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': HomePageWidget(),
      'Lessons': LessonsWidget(),
      'SocialDance3': SocialDance3Widget(),
      'UserProfile': UserProfileWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.home,
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school_sharp,
              size: 29,
            ),
            label: 'Lessons',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.solidMoon,
              size: 24,
            ),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.solidUserCircle,
              size: 24,
            ),
            label: 'Profile',
          )
        ],
        backgroundColor: Colors.black,
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xBCFFFFFF),
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
