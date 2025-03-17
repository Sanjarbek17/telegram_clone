import 'package:flutter/material.dart';
import 'package:telegram_clone/features/chat/presentation/widgets/custom_appbar.dart';

class ChatAccountScreen extends StatelessWidget {
  const ChatAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Center(child: Text('Account Screen')),
    );
  }
}
