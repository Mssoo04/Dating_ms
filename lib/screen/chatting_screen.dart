import 'package:dating/Widget/chat/chat.dart';
import 'package:dating/Widget/chat/chat_profile.dart';
import 'package:dating/controller/chat_controller.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Center(
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.pink,
                  ),
                ),
              ),
              const Text(
                '홍길동',
                style: TextStyle(
                    color: fontColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        leadingWidth: 400,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Row(
              children: [
                ChattingProfile(),
                Chat(
                  text: Text('안녕하세요 !'),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Chat(text: Text('홍대신가요 ?')),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Chat(text: Text('안녕하세요')),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Chat(text: Text('지금 홍대')),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Chat(text: Text('홍대신가요 ?')),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Chat(text: Text('홍대신가요 ?')),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Chat(text: Text('홍대신가요 ?')),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Chat(text: Text('홍대신가요 ?')),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Chat(text: Text('홍대신가요 ?')),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Chat(text: Text('홍대신가요 ?')),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.photo)),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: '입력 ..', border: InputBorder.none),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}
