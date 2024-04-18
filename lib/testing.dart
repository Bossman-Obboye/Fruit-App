import 'package:flutter/material.dart';

// import 'package:fruit_app/utilities/colors.dart';

class Tst extends StatelessWidget {
  const Tst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: [
                  Colors.blue,
                  Colors.amber,
                ],
              ),
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .5,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .5,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100),
                            ),
                            image: DecorationImage(
                                image: AssetImage('assets/images/bg.png'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * .08,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(150),
                              topLeft: Radius.circular(150),
                            ),
                            gradient: LinearGradient(
                              end: Alignment.centerRight,
                              begin: Alignment.centerLeft,
                              colors: [
                                Colors.blue,
                                Colors.amber,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        end: Alignment.centerRight,
                        begin: Alignment.centerLeft,
                        colors: [
                          Colors.blue,
                          Colors.amber,
                        ],
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .5,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(120),
                          ),
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),

    );
  }
}

class RightConcaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(size.width, 0)
      ..cubicTo(size.width - 20, 25, size.width - 20, 30, size.width - 30, 30)
      ..cubicTo(size.width - 62, 30, size.width - 62, 70, size.width - 30, 70)
      ..cubicTo(size.width - 20, 70, size.width, 90, size.width, 90)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return oldClipper != this;
  }
}

// class CurlyBottomContainer extends StatelessWidget {
//   final double width;
//   final double height;
//   final Color color;
//   final double curveHeight;

//   const CurlyBottomContainer({
//     super.key,
//     required this.width,
//     required this.height,
//     required this.color,
//     this.curveHeight = 30.0,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: CustomPaint(
//         painter: _CurlyPainter(
//           color: color,
//           curveHeight: curveHeight,
//         ),
//       ),
//     );
//   }
// }

// class _CurlyPainter extends CustomPainter {
//   final Color color;
//   final double curveHeight;

//   _CurlyPainter({
//     required this.color,
//     required this.curveHeight,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..color = color;

//     final path = Path()
//       ..moveTo(0, size.height)
//       ..lineTo(0, curveHeight);

//     final double controlPointX1 = size.width * 0.25;
//     final double controlPointX2 = size.width * 0.75;
//     final double controlPointY = curveHeight * 0.5;

//     path.cubicTo(
//       controlPointX1,
//       0,
//       controlPointX2,
//       0,
//       size.width,
//       curveHeight,
//     );

//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(_CurlyPainter oldDelegate) => false;
// }

// import 'package:flutter/material.dart';

// class CurvyBottomContainer extends StatelessWidget {
//   final double width;
//   final double height;
//   final Color color;
//   final double curveHeight;

//   const CurvyBottomContainer({
//     super.key,
//     required this.width,
//     required this.height,
//     required this.color,
//     this.curveHeight = 30.0,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: CustomPaint(
//         painter: _CurvyPainter(
//           color: color,
//           curveHeight: curveHeight,
//         ),
//       ),
//     );
//   }
// }

// class _CurvyPainter extends CustomPainter {
//   final Color color;
//   final double curveHeight;

//   _CurvyPainter({
//     required this.color,
//     required this.curveHeight,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..color = color;

//     final path = Path()
//       ..moveTo(0, size.height)
//       ..lineTo(0, curveHeight)
//       ..quadraticBezierTo(
//         size.width / 2,
//         0,
//         size.width,
//         curveHeight,
//       )
//       ..lineTo(size.width, size.height)
//       ..close();

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(_CurvyPainter oldDelegate) => false;
// }

// 

// class WavyBottomContainer extends StatelessWidget {
//   final double width;
//   final double height;
//   final Color color;
//   final double waveHeight;
//   final int waveCount;

//   const WavyBottomContainer({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.color,
//     this.waveHeight = 20.0,
//     this.waveCount = 3,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: CustomPaint(
//         painter: _WavyPainter(
//           color: color,
//           waveHeight: waveHeight,
//           waveCount: waveCount,
//         ),
//       ),
//     );
//   }
// }

// class _WavyPainter extends CustomPainter {
//   final Color color;
//   final double waveHeight;
//   final int waveCount;

//   _WavyPainter({
//     required this.color,
//     required this.waveHeight,
//     required this.waveCount,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..color = color;

//     final path = Path()..moveTo(0, size.height);

//     final waveWidth = size.width / (waveCount * 2);

//     for (int i = 0; i < waveCount; i++) {
//       final x = (i * 2 + 1) * waveWidth;
//       path.cubicTo(
//         x - waveWidth / 2,
//         size.height - waveHeight,
//         x - waveWidth / 4,
//         size.height,
//         x,
//         size.height - waveHeight,
//       );
//       path.cubicTo(
//         x + waveWidth / 4,
//         size.height - 2 * waveHeight,
//         x + waveWidth / 2,
//         size.height - waveHeight,
//         x + waveWidth,
//         size.height - waveHeight,
//       );
//     }

//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(_WavyPainter oldDelegate) => false;
// }
