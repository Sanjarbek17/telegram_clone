import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_clone/core/constans/constant_colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: ConstantColors.primaryColor.withRed(100)),
      backgroundColor: ConstantColors.primaryColor,
      body: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor: ConstantColors.primaryColor,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            title: Row(
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
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
              ),
            ],
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Wallpaper.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xffD2E9FB),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                'Hello, how are you?',
                                style: TextStyle(
                                  color: ConstantColors.primaryColor,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xffD2E9FB),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                'I am fine, thank you!',
                                style: TextStyle(
                                  color: ConstantColors.primaryColor,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 70,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          // decoration: BoxDecoration(
                          //   color: Color(0xffD2E9FB),
                          //   borderRadius: BorderRadius.circular(30),
                          // ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/EmojiIcon.svg'),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Message',
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: ConstantColors.greyColor,
                                    ),
                                  ),
                                ),
                              ),
                              SvgPicture.asset('assets/icons/AttachIcon.svg'),
                              SizedBox(width: 10),
                              SvgPicture.asset('assets/icons/VoiceIcon.svg'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
