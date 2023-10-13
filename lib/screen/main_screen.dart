import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating/Widget/main/circle_avatar.dart';
import 'package:dating/Widget/main/gesture_box.dart';
import 'package:dating/Widget/main/profile_main.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/screen/alert_screen.dart';
import 'package:dating/screen/information_modify_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            '캠밋',
            style: TextStyle(
                color: fontColor, fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
        ),
        leadingWidth: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AlertScreen()));
              },
              icon: const Icon(
                Icons.notifications_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Photo Carousel
            CarouselSlider.builder(
              itemCount: 50,
              itemBuilder: (context, index, realIndex) => const ProfileMain(),
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 1,
                  autoPlay: true,
                  viewportFraction: 0.8),
            ),
            const SizedBox(height: 40),
            // Title and Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '오늘의 과팅🔥',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const InformationScreen()),
                        ),
                      );
                    },
                    child: const Text(
                      '정보 수정',
                      style: TextStyle(color: font2Color),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Gesture Box List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    50,
                    (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: GestureBox(),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Interested Friends
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    '내가 관심 있는 친구',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            // Interested Friends List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    50,
                    (index) => const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Avatar(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
