import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  final String imageSettings;
  final String txtSettings;
  final String data;
  const ProfileSettings({
    super.key,
    required this.imageSettings,
    required this.data,
    required this.txtSettings
  });

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 126,
            child: Row(
              children: [
                Image.asset(widget.imageSettings),
                Text(widget.txtSettings, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
              ],
            ),
          ),
          SizedBox(width: 170, child: Text(widget.data, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),)),
        ],
      ),
    );
  }
}