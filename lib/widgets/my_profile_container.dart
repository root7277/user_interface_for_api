import 'package:flutter/material.dart';
import 'package:user_interface_for_api/core/get_user_data.dart';
import 'package:user_interface_for_api/modul/user_model.dart';

class MyProfileContainer extends StatefulWidget {
  const MyProfileContainer({super.key});

  @override
  State<MyProfileContainer> createState() => _MyProfileContainerState();
}

class _MyProfileContainerState extends State<MyProfileContainer> {
  late Future<UserModel> func;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: InkWell( 
        onTap: () {
          Future<UserModel> user = getUserData();
          setState(() {
            func = user;
          });
          Navigator.pushNamed(context, 'profile_settings_page');
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 16, 155, 185),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/user_icon.png'),
              const SizedBox(width: 100, child: Text('My Profile', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),)),
              const Icon(Icons.arrow_forward_ios_rounded, size: 30, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}