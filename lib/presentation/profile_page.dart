import 'package:flutter/material.dart';

import '../container/user_container.dart';
import '../data/movies_api.dart';
import '../models/app_user.dart';
import 'bottom_navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.title, required this.imgUrl}) : super(key: key);

  final String title;
  final String imgUrl;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UserContainer(builder: (context, AppUser? user) {
          String imageUrl;
          if (user != null && user.imageUrl != null) {
            imageUrl = user.imageUrl!;
          } else {
            imageUrl = '';
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(widget.title),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: imageUrl != ''
                    ? Image.network(
                        imageUrl,
                        width: 50,
                        height: 50,
                      )
                    : null,
              ),
            ],
          );
        }),
        centerTitle: true,
      ),
      body: const Text('Profile'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MoviesApi().getMovies(1);
        },
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
