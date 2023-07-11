import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_interface_for_api/core/get_user_data.dart';
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
                FutureBuilder(
                  future: getUserData(),
                  builder: (context, snapshot){
                    print(snapshot.connectionState);
                    if(snapshot.connectionState == ConnectionState.waiting){
                      return Builder(builder: (context) {
                        return const Center(child: CircularProgressIndicator());
                      });
                    }

                    if(snapshot.hasData){
                      print(snapshot.data);
                      userModel = snapshot.data;
                    }

                    return Column(
                      children: [
                        Stack(
                         children: [
                          CircleAvatar(
                            radius: 62,
                            backgroundImage: NetworkImage(userModel == null? 'assets/person.png': userModel!.image),
                          ),
                           Positioned(left: 100, top: 100, child: SvgPicture.asset('assets/elleps_small.svg')),
                          ]
                        ),
                        const SizedBox(height: 8),
                        Padding(
                         padding: const EdgeInsets.only(left: 80),
                         child: Row(
                           children: [
                             SizedBox(width: 180, child: Text(userModel == null? 'Morgan James': userModel!.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),)),
                             Image.asset('assets/pencil.png'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text('UI/UX Designer', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.grey),)
                      ],
                    );
                  }
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
            FutureBuilder(
              future: getUserData(),
              builder: (context, snapshot) {
                print(snapshot.connectionState);
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Builder(builder: (context) {
                    return const Center(child: CircularProgressIndicator());
                  });
                }
                if(snapshot.hasData){
                  print(snapshot.data);
                  userModel = snapshot.data;
                }

                return Column(
                  children: [
                    ProfileSettings(imageSettings: 'assets/icons/user_icon.png', data: userModel == null ? 'MorganJamesDesigner': userModel!.username, txtSettings: 'Username'),
                    const SizedBox(height: 28),
                    ProfileSettings(imageSettings: 'assets/icons/contact.png', data: userModel == null? '+24500000000': userModel!.contact, txtSettings: 'Contact'),
                    const SizedBox(height: 18),
                    ProfileSettings(imageSettings: 'assets/icons/email.png', data: userModel == null? 'mjdesigner@gmail.com': userModel!.email, txtSettings: 'Email '),
                    const SizedBox(height: 17),
                  ],
                );
              }
            ),
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