// import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:fruit_app/first_view.dart';
import 'package:fruit_app/utilities/colors.dart';

class SecondView extends StatelessWidget {
   SecondView({super.key});

  final List<String> fruits = [
    
  ];

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
                height: size.height * 0.015,
              ),
              ClipPath(
                clipper: WaveClipperTwo(),
                child: ClipRRect(
                  child: Container(
                    height: size.height * 0.32,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: CustomColors.primaryColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Transform.rotate(
                          angle: -0.2,
                          child: Text(
                            "FruitBasket",
                            style: TextStyle(
                              fontFamily: 'MrsSaintDelafield',
                              fontSize: 80,
                              color: CustomColors.white,
                            ),
                          ),
                        ),
                        const Image(
                          image: AssetImage('assets/images/woman.png'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Choices",
                      style: TextStyle(
                          color: CustomColors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("View all",
                        style: TextStyle(
                          color: CustomColors.white,
                          fontSize: 12,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        DisplayCard(size: size),
                        DisplayCard(size: size),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        DisplayCard(size: size),
                        DisplayCard(size: size),
                      ],
                    )
                  ]),
              SizedBox(
                height: size.height * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DesignBox(
                    size: size,
                    mainText: 'Fruit',
                  ),
                  DesignBox(
                    size: size,
                    fillColor: const Color(0xff454854),
                    height: size.height * 0.032,
                    mainText: 'Flower',
                  ),
                  DesignBox(
                    size: size,
                    mainText: 'Feasr',
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.home,
                    size: 26,
                    color: Color(0xff919292),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class DisplayCard extends StatelessWidget {
  const DisplayCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: size.height * 0.17,
        width: size.width * 0.42,
        decoration: BoxDecoration(
          color: const Color(0xff283238),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(-0.8, 0.8),
              child: Image(
                height: size.height * 0.1,
                image: const AssetImage('assets/images/mango.png'),
              ),
            ),
            Align(
              alignment: const Alignment(0.8, -0.8),
              child: SizedBox(
                height: size.height * 0.06,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mango',
                        style: TextStyle(
                            color: CustomColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17)),
                    Text(
                      "maing skl",
                      style: TextStyle(
                          color: CustomColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 7),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(1.05, 1.05),
              child: Container(
                height: size.height * 0.021,
                width: size.width * 0.04,
                decoration: BoxDecoration(
                    color: CustomColors.primaryColor,
                    borderRadius: BorderRadius.circular(3)),
                child: const Center(child: Icon(Icons.add, size: 17)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WaveClipperTwo extends CustomClipper<Path> {
  WaveClipperTwo();
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    var firstControlPoint = Offset(size.width / 8, size.height - 25);
    var firstEndPoint = Offset(size.width / 3, size.height - 25);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondCP = Offset(size.width / 1.4, size.height + 25);
    var secondEP = Offset(size.width, size.height - 25);
    path.quadraticBezierTo(secondCP.dx, secondCP.dy, secondEP.dx, secondEP.dy);

    path.lineTo(size.width, size.height - 20);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
