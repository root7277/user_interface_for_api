import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_interface_for_api/widgets/profile_page_widget.dart';
import 'package:user_interface_for_api/widgets/my_profile_container.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 290,
              child: Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            right: -600,
                            left: -300,
                            top: -2,
                            bottom: -240,
                            child: SvgPicture.asset('assets/elleps.svg')
                          ),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.menu, size: 30,)),
                          Positioned(
                            top: 50,
                            left: 40,
                            bottom: -191,
                            right: -300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/person.png'),
                                const Text('Morgan James', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                                const Text('UI/UX Designer', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/green_elleps.svg'),
                  const Text('Active', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                  SizedBox(width: 40, child: Image.asset('assets/icons/icon_down.png')),
                ],
              ),
            ),
            const SizedBox(height: 23),
            const MyProfileContainer(),
            const SizedBox(height: 23),
            const WidgetPro(image: 'assets/icons/email.png', imageTrailing: 'assets/icons/icon_right.png', txt: 'Messages'),
            const SizedBox(height: 23),
            const WidgetPro(image: 'assets/icons/popka.png', imageTrailing: 'assets/icons/icon_right.png', txt: 'My Portfolio'),
            const SizedBox(height: 23),
            const WidgetPro(image: 'assets/icons/map.png', imageTrailing: 'assets/icons/icon_right.png', txt: 'Location'),
            const SizedBox(height: 23),
            const WidgetPro(image: 'assets/icons/setting.png', imageTrailing: 'assets/icons/icon_right.png', txt: 'Settings'),
          ],
        ),
      ),
    );
  }
}