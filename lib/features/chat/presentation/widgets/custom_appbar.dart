import 'package:flutter/material.dart';
import 'package:telegram_clone/core/constans/constant_colors.dart';
import 'package:telegram_clone/features/chat/presentation/screens/chat_account_screen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(80);

  const CustomAppbar({super.key});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: ConstantColors.primaryColor,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_outlined, color: Colors.white, size: 30),
        ),
      ),
      title: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatAccountScreen()),
          );
        },
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/Avatar.png'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Elon',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'online',
                  style: TextStyle(color: Color(0xffD2E9FB), fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
        ),
      ],
    );
  }
}
