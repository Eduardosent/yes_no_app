import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/widgets/her_message_buble.dart';
import 'package:yes_no_app/widgets/my_message_buble.dart';
import 'package:yes_no_app/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi amor'),
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'data:image/jpeg;base64,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'),
          ),
        ),
      ),
      body: const ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  controller: chatProvider.chatScrollController,
                  itemCount: chatProvider.messageList.length,
                  itemBuilder: (context, index) {
                    final message = chatProvider.messageList[index];

                    return (message.fromWho == FromWho.hers)
                        ? HerMessageBuble(message: message)
                        : MyMessageBuble(
                            message: message,
                          );
                  })),
          MessageFieldBox(
            onValue: chatProvider.sendMessage,
          )
        ],
      ),
    ));
  }
}
