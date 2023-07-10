import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_interface_for_api/modul/user_model.dart';
import 'package:user_interface_for_api/widgets/profile_setting.dart';
import 'package:user_interface_for_api/widgets/settings_container.dart';

class ProfileSettingsPage extends StatefulWidget {
  const ProfileSettingsPage({super.key});

  @override
  State<ProfileSettingsPage> createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {

  UserModel? userModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/person.png'),
                        Positioned(left: 100, top: 100, child: SvgPicture.asset('assets/elleps_small.svg')),
                      ]
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                          const SizedBox(width: 180, child: Text('Morgan James', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),)),
                          Image.asset('assets/pencil.png'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text('UI/UX Designer', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.grey),)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 37),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('PROFILE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ),
            const SizedBox(height: 9.5),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(height: 3, color: Colors.black54),
            ),
            const SizedBox(height: 19.5),
            const ProfileSettings(imageSettings: 'assets/icons/user_icon.png', data: 'MorganJamesDesigner', txtSettings: 'Username'),
            const SizedBox(height: 28),
            const ProfileSettings(imageSettings: 'assets/icons/contact.png', data: '+24500000000', txtSettings: 'Contact'),
            const SizedBox(height: 18),
            const ProfileSettings(imageSettings: 'assets/icons/email.png', data: 'mjdesigner@gmail.com', txtSettings: 'Email '),
            const SizedBox(height: 17),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(height: 3, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Other Ways People Can Find Me  ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ),
            const SizedBox(height: 20),
            const SettingsContainer(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(height: 3, color: Colors.black54),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icons/information.png'),
                  const Text('Help and Feedback', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                  const Icon(Icons.arrow_forward, color: Colors.black)
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}