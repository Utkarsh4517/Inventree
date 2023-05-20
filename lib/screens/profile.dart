import 'package:flutter/material.dart';
import 'package:inventree/constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: floralWhite,
      body: Center(
        child: Text('Profile Page', style: TextStyle(color: spaceCadet),),
      ),
    );
  }
}