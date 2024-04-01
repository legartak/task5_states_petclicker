import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function callback;

  const CustomDrawer({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          const DrawerHeader(
            child: Text(
              'Temp menu. In idea, here must be settings, pet shop, etc.',
            ),
          ),
          ListTile(
            leading: const Icon(Icons.cloud),
            iconColor: Colors.black,
            title: const Text(
              "Toggle hidden widget",
            ),
            onTap: () {
              callback();
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
