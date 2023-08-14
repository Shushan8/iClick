import 'package:flutter/material.dart';
import 'package:i_click/screens/src/user_detail_screen.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.name, required this.mail});

  final String name;
  final String mail;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blue,
        ),
      ),
      title: Text(name),
      subtitle: Text(mail),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: ((context) => UserDetailScreen(
                  mail: mail,
                  name: name,
                ))));
      },
    );
  }
}
