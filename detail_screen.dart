import 'dart:ui';
import 'package:coffee_app_ui/constants/colors.dart';
import 'package:coffee_app_ui/constants/constants.dart';
import 'package:coffee_app_ui/data/coffee_data.dart';
import 'package:coffee_app_ui/widgets/image_box.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Coffee coffeeModel;
  const DetailScreen({
    Key? key,
    required this.coffeeModel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 93, 152, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ImageBox(coffee: coffeeModel),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppText.description,
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: Color.fromARGB(255, 253, 254, 255),
                              ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                '${coffeeModel.title} has the best coffee shots and tastes better than to other coffee shop. As home barista experts, this is our tried and true method.',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: AppColors.white,
                                ),
                          ),
                          TextSpan(
                            text: ' ...Read More',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: Color.fromARGB(255, 0, 0, 249),
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      AppText.size,
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: AppColors.textColor,
                              ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                              width: 2,
                              color: const Color.fromARGB(255, 240, 246, 255),
                            ),
                          ),
                          child: Text(
                            "S",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Color.fromARGB(255, 97, 193, 241),
                                ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: const Color.fromARGB(255, 240, 246, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "M",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    color: Color.fromARGB(255, 109, 165, 249)),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: const Color.fromARGB(255, 240, 246, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "L",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Color.fromARGB(255, 109, 165, 249),
                                ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Price",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 5),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '\₱',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .copyWith(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          )),
                                  TextSpan(
                                    text: coffeeModel.price,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        MaterialButton(
                          onPressed: () {},
                          height: 55,
                          minWidth: 200,
                          color: Color.fromARGB(255, 68, 174, 254),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            "Order Now",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
