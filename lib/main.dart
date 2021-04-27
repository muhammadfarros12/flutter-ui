import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/whatsapp_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI WhatsApp',
      debugShowCheckedModeBanner: false,
      home: WhatsAppPage(title: 'WhatsApp',
      ),
    );
  }
}