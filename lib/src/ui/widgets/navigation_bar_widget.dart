import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ondemand_video_rounded,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://scontent-sin6-1.cdninstagram.com/v/t51.2885-19/s150x150/28434791_820486071471943_5157891672478056448_n.jpg?_nc_ht=scontent-sin6-1.cdninstagram.com&_nc_cat=107&_nc_ohc=kxx23sV1YrAAX-gxvnB&edm=ABfd0MgBAAAA&ccb=7-4&oh=8bab393d943d29607dd2c495982f6c58&oe=618C0961&_nc_sid=7bff83",
              ),
              maxRadius: 17,
            ),
            label: "",
          ),
        ]);
  }
}
