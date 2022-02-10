import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildHeaderAvatar(),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderProfile() {
    return SizedBox();
  }

  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/peter.png"),
      ),
    );
  }
}
