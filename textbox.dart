import 'package:coffee_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardAppearance: Brightness.dark,
      style: const TextStyle(color: Color.fromARGB(255, 255, 248, 248)),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: Color.fromARGB(255, 47, 98, 188),
        ),
        hintText: AppText.findCoffee,
        hintStyle: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Color.fromARGB(255, 233, 238, 246)),
        fillColor: Color.fromARGB(255, 24, 7, 255),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
