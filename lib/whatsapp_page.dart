import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/pages/chat_page.dart';

class WhatsAppPage extends StatefulWidget {
  final String title;

  const WhatsAppPage({Key key, this.title}) : super(key: key);
  @override
  _WhatsAppPageState createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage> with SingleTickerProviderStateMixin {
  Color WhatsAppGreen = Color.fromRGBO(18, 140, 126, 1.0);
  Color WhatsAppLightGreen = Color.fromRGBO(37, 211, 102, 1.0);

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600
          ),
        ),
        backgroundColor: WhatsAppGreen,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.more_vert),
          ),
        ],

        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('CHATS'),
            ),
            Tab(
              child: Text('STATUS'),
            ),
            Tab(
              child: Text('CALLS'),
            ),
          ],
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Icon(Icons.camera_alt),
          ChatPage(),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
