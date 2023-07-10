import 'package:flutter/material.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        padding: const EdgeInsets.all(10),
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img/twitter.png'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img/insta.png'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img/face.png'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img/linked.png'),
                  ),
                ],),
              ),
    );
  }
}