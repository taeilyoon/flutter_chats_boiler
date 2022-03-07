library flutter_chats_boiler;

import 'package:flutter/material.dart';

typedef ToDate<T> = DateTime Function(T model);
typedef ToWidget<T> = Widget Function(T model);

class FlutterChatsBoiler<T> extends StatelessWidget {
  List<T> data;
  ToDate<T>? toDate;
  ToWidget<T>? buildChatBubble;
  ToWidget<T>? buildAvatar;
  ToWidget<T>? buildDateDivider;
  ToWidget<T>? buildDate;

  FlutterChatsBoiler({
    Key? key,
    this.data = const [],
    this.buildAvatar,
    this.buildChatBubble,
    this.toDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buildCells(),
    );
  }

  List<Widget> buildCells() {
    List<Widget> list = <Widget>[];
    data.asMap().forEach((key, value) {
      if (key == 0) {
      } else if (key == data.length - 1) {
      } else {}
    });
  }

  Widget buildCell({
    required T data,
    bool showDateDivider = false,
    bool showTime = false,
    bool showProfile = false,
    bool isMe = false,
  }) {}
}

class ChatBubble extends StatelessWidget {
  final isUpsideProfile = false;
  const ChatBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(children: []));
  }
}
