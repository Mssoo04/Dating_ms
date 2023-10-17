import 'package:dating/Widget/profile/hobby_container.dart';
import 'package:flutter/material.dart';

class Hobby3 extends StatelessWidget {
  const Hobby3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
          child: Text('관심사'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            spacing: 5,
            runSpacing: 5,
            children: [
              HobbyContainer(
                text: '게임',
                color: Colors.grey,
              ),
              HobbyContainer(
                text: 'IT',
                color: Colors.grey,
              ),
              HobbyContainer(
                text: '운동',
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}