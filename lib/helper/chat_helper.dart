

import 'package:flutter_whatsapp_ui/model/chats_item_model.dart';

class ChatHelper {
  static var chatList = [
    ChatsItemModel('Jhon', 'img/person1.png', '25/04/2021', 'Hallo, sehat lu cuy'),
    ChatsItemModel('pulan', 'img/person2.png', '25/04/2021', 'euy, kirim hasil tugas lah'),
    ChatsItemModel('pulanah', 'img/person3.png', '23/04/2021', 'yok mabar yok'),
  ];

  static ChatsItemModel getItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;
}