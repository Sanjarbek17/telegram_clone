import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool _isDarkMode = false;

  final List<Map<String, dynamic>> _drawerItems = [
    {'title': 'New Group', 'icon': Icons.group_outlined},
    {'title': 'Contacts', 'icon': Icons.person_outline},
    {'title': 'Calls', 'icon': Icons.call_outlined},
    {'title': 'People Nearby', 'icon': Icons.emoji_people},
    {'title': 'Saved Messages', 'icon': Icons.bookmark_outline},
    {'title': 'Settings', 'icon': Icons.settings_outlined},
  ];

  final List<Map<String, dynamic>> _secondaryItems = [
    {'title': 'Invite Friends', 'icon': Icons.person_add_alt_1_outlined},
    {'title': 'Telegram FAQ', 'icon': Icons.question_mark_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: _height * 0.2,
            color: AppColors.kMenuColor,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: _height * 0.0375,
                      backgroundColor: Colors.white,
                    ),
                    IconButton(
                      onPressed:
                          () => setState(() => _isDarkMode = !_isDarkMode),
                      icon: Icon(
                        _isDarkMode ? Icons.light_mode : Icons.dark_mode,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Username', style: TextStyle(color: Colors.white)),
                        Text(
                          'Phone Number',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children:
                _drawerItems
                    .map(
                      (item) => ListTile(
                        onTap: () {},
                        splashColor: Colors.grey.shade100,
                        title: Text(
                          item['title'],
                          style: TextStyle(color: AppColors.kDrawerTextColor),
                        ),
                        leading: Icon(
                          item['icon'],
                          color: AppColors.kDrawerButtonColor,
                        ),
                      ),
                    )
                    .toList(),
          ),
          Divider(color: Colors.grey.shade100),
          Column(
            children:
            _secondaryItems
                .map(
                  (item) => ListTile(
                onTap: () {},
                splashColor: Colors.grey.shade100,
                title: Text(
                  item['title'],
                  style: TextStyle(color: AppColors.kDrawerTextColor),
                ),
                leading: Icon(
                  item['icon'],
                  color: AppColors.kDrawerButtonColor,
                ),
              ),
            )
                .toList(),
          ),


        ],
      ),
    );
  }
}
