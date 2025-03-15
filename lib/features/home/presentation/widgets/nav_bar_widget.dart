import 'package:flutter/material.dart';
import 'package:telegram_clone/core/constants/colors.dart';

import '../../data/models/nav_bar_model.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
    required this.selectedIndex,
    required this.onPressed,
  });

  final int selectedIndex;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: width,
      height: height * 0.05,
      decoration: BoxDecoration(
        color: AppColors.kMenuColor,
        border: Border.all(color: AppColors.kMenuColor, width: 0.5),
        boxShadow: [
          BoxShadow(
            blurRadius: 2.5,
            spreadRadius: 2.5,
            offset: Offset(0, -0.5),
            color: Colors.grey.shade500,
          ),
        ],
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: NavBarModel.navBars.length,
        itemBuilder: (context, index) {
          final bool isSelected = selectedIndex == index;

          final navBar = NavBarModel.navBars[index];

          return MaterialButton(
            onPressed: onPressed,
            minWidth: width / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      navBar.title,
                      style: textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 5),
                    navBar.unReadMessages == 0
                        ? SizedBox()
                        : CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.white,
                          child: Text(
                            navBar.unReadMessages.toString(),
                            style: textTheme.titleSmall?.copyWith(
                              color: AppColors.kMenuColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12
                            ),
                          ),
                        ),
                  ],
                ),
                isSelected ? Container(height: 5,width: width / 5,decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                ),) : SizedBox(height: 5),
              ],
            ),
          );
        },
      ),
    );
  }
}
