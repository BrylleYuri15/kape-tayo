import 'package:flutter/material.dart';

import 'package:coffee_app_ui/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  final IconData icon;
  late bool backButton;
  late bool profile;

  CustomAppBar({
    Key? key,
    required this.icon,
    required this.backButton,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 151, 165, 187),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: IconButton(
              onPressed: () {
                backButton ? Navigator.pop(context) : {};
              },
              icon: Icon(
                icon,
                color: const Color.fromARGB(255, 0, 53, 132),
                size: 20,
              ),
            ),
          ),
          profile
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                        color: Color.fromARGB(255, 0, 37, 96),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.profile),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 89, 232),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 40,
                  width: 40,
                  child: const Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 0, 32, 80),
                    size: 20,
                  ),
                )
        ],
      ),
    );
  }
}
