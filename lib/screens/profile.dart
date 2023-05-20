import 'package:flutter/material.dart';
import 'package:inventree/constants/colors.dart';
import 'package:inventree/widgets/custom_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: floralWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onPress: (){}, text: "Sign out")
          ],
        ),
      ),
    );
  }
}