import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onPress,
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.blueAccent.withOpacity(0.1),
            ),
            child: Icon(
              icon,
              color: Colors.blueAccent,
            ),
          ), // Container
          title: Text(
            title,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: textColor),
          ),
          trailing: endIcon
              ? Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.arrow_right,
                      size: 18.0, color: Colors.grey))
              : null,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
