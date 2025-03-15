import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.time,
    required this.lastMessage,
  });

  final String title;
  final String subTitle;
  final String time;
  final String lastMessage;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: MediaQuery.of(context).size.height * 0.125,
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: MediaQuery.of(context).size.height * 0.0375,
            backgroundColor: Colors.grey.shade200,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                            ),
                          ),
                          SizedBox(height: 5),
                          subTitle.isNotEmpty
                              ? Text(
                                subTitle,
                                style: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14
                                ),
                              )
                              : SizedBox(),
                          SizedBox(height: 5),
                          Text(
                            lastMessage,
                            style: textTheme.bodySmall?.copyWith(
                              color: Colors.grey.shade500,
                              fontSize: 13
                            ),
                          ),
                        ],
                      ),
                      Text(time),
                    ],
                  ),
                ),
                Divider(color: Colors.grey.shade300),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
