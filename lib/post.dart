import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("投稿画面"),
      ),
      body: Center(
        child: TextField(
          controller: _textEditingController,
          enabled: true,
          maxLength: 50,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,// 入力上限になったときに文字入力を抑制するか
          style: const TextStyle(color: Colors.black),
          obscureText: false,
          maxLines: 1,
          decoration: const InputDecoration(
            icon: Icon(Icons.speaker_notes),
            hintText: "投稿内容を記載します",
            labelText: "内容 * "
          ),
        ),
      )
    );
  }
}