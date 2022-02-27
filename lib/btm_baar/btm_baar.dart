import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/screens/chats/components/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BtmBaar extends StatefulWidget {
  const BtmBaar({Key? key}) : super(key: key);

  @override
  State<BtmBaar> createState() => _BtmBaarState();
}

class _BtmBaarState extends State<BtmBaar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appMethod(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.solidComment,
              size: 20,
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.userFriends,
              size: 20,
            ),
            label: "Groups",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.bandcamp,
              size: 20,
            ),
            label: "Requests",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.users,
              size: 20,
            ),
            label: "Community",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

AppBar appMethod() {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: Text(
      "Naija Communty in Canada",
    ),
  );
}
