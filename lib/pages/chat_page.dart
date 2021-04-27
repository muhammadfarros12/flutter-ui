import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/helper/chat_helper.dart';
import 'package:flutter_whatsapp_ui/model/chats_item_model.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChatHelper.itemCount,
      itemBuilder: (context, position) {
        ChatsItemModel chatItem = ChatHelper.getItem(position);
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    chatItem.image,
                    width: 58,
                    height: 58,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                chatItem.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0),
                              ),
                              Text(
                                chatItem.messageDate,
                                style: TextStyle(color: Colors.black45),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            chatItem.mostRecentDate,
                            style: TextStyle(
                                color: Colors.black45, fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider()
          ],
        );
      },
    );
  }
}
