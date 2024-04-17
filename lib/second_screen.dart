import 'package:flutter/material.dart';
import 'package:fruit_app/utilities/colors.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Stack(
      children: [
        Image(
          height: size.height,
          width: size.width,
          image: const AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'FruitBasket',
                    style: TextStyle(
                      fontFamily: 'MrsSaintDelafield',
                      fontSize: 20,
                      color: CustomColors.white,
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Icon(Icons.search, color: CustomColors.white)),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              CustomPaint(
                child: Container(
                  height: size.height * 0.4,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(color: CustomColors.primaryColor),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
