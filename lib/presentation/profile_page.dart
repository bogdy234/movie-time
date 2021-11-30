import 'package:flutter/material.dart';

import '../constants/login_page.dart';
import '../container/user_container.dart';
import '../models/app_user.dart';
import 'bottom_navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UserContainer(
          builder: (BuildContext context, AppUser? user) {
            return UserContainer(
              builder: (BuildContext context, AppUser? user) {
                if (user == null) {
                  return const SizedBox.shrink();
                }

                final String name = user.name;
                final String imageUrl = user.imageUrl ?? Constants.GENERIC_USER_IMAGE_URL;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(name),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        imageUrl,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: const Text(
        Constants.PROFILE,
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
