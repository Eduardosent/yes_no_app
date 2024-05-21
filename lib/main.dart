import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/configuration/theme/app_theme.dart';
import 'package:yes_no_app/presentation/chat/chat_screen.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ChatScreen(),
        title: 'Yes No App',
        theme: AppTheme(selectedColor: 1).theme(),
      ),
    );
  }
}
