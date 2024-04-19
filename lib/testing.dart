import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fruit_app/utilities/colors.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Staggered Grid View Example'),
        ),
        body: GridView.custom(
          gridDelegate: SliverWovenGridDelegate.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            pattern: [
              WovenGridTile(1),
              WovenGridTile(
                5 / 7,
                crossAxisRatio: 0.9,
                alignment: AlignmentDirectional.centerEnd,
              ),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => DisplayCard(size: size),
          ),
        ),
      ),
    );
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


// import 'package:flutter/material.dart';

// class Tst extends StatelessWidget {
//   const Tst({super.key});

//   // Transform(
//   //           transform: Matrix4.rotationZ(0.4),
//   //           alignment: const Alignment(-9, 6),
//   //           child: Image(
//   //             image: const AssetImage('assets/images/pear.png'),
//   //             height: size.height * 0.3,
//   //           ),
//   //         ),

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Flutter custom clipper example"),
//         ),
//         body: Center(
//           child: ClipPath(
//             // clipper: WaveClipperTwo(),
//             child: Container(
//               width: MediaQuery.sizeOf(context).width - 60,
//               height: MediaQuery.of(context).size.height * .4,
//               decoration: const BoxDecoration(
//                   color: Colors.orange,
//                   borderRadius:
//                       BorderRadius.only(bottomLeft: Radius.circular(15))),
//               child: const Center(child: Text("WaveClipperTwo(flip: true)")),
//             ),
//           ),
//         )

//         // ListView(
//         //   padding: const EdgeInsets.all(20.0),
//         //   children: <Widget>[
//         //     ClipPath(
//         //       clipper: WaveClipperOne(flip: true, reverse: true),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.orange,
//         //         child: const Center(
//         //             child: Text("WaveClipperTwo(flip: true,reverse: true)")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),

//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: WaveClipperTwo(flip: true, reverse: true),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.orange,
//         //         child: const Center(
//         //             child: Text("WaveClipperTwo(flip: true,reverse:true)")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: WaveClipperTwo(flip: true),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.amber,
//         //         child: const Center(child: Text("WaveClipperTwo(flip: true)")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: OvalBottomBorderClipper(),
//         //       child: Container(
//         //         height: 100,
//         //         color: Colors.blue,
//         //         child: const Center(child: Text("OvalBottomBorderClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: OvalRightBorderClipper(),
//         //       child: Container(
//         //         height: 100,
//         //         color: Colors.red,
//         //         child: const Center(child: Text("OvalRightBorderClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: SideCutClipper(),
//         //       child: Container(
//         //         height: 200,
//         //         color: Colors.pink,
//         //         //play with scals to get more clear versions
//         //         child: const Center(child: Text("SideCutClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: OvalLeftBorderClipper(),
//         //       child: Container(
//         //         height: 100,
//         //         color: Colors.green,
//         //         child: const Center(child: Text("OvalLeftBorderClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: ArcClipper(),
//         //       child: Container(
//         //         height: 100,
//         //         color: Colors.pink,
//         //         child: const Center(child: Text("ArcClipper()")),
//         //       ),
//         //     ),
//         //     ClipPath(
//         //       clipper: PointsClipper(),
//         //       child: Container(
//         //         height: 100,
//         //         color: Colors.indigo,
//         //         child: const Center(child: Text("PointsClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: TriangleClipper(),
//         //       child: Container(
//         //         height: 100,
//         //         color: Colors.deepOrange,
//         //         child: const Center(child: Text("TriangleClipper()")),
//         //       ),
//         //     ),
//         //     ClipPath(
//         //       clipper: MovieTicketClipper(),
//         //       child: Container(
//         //         height: 100,
//         //         color: Colors.deepPurple,
//         //         child: const Center(child: Text("MovieTicketClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: MovieTicketBothSidesClipper(),
//         //       child: Container(
//         //         height: 100,
//         //         color: Colors.green,
//         //         child: const Center(child: Text("MovieTicketBothSidesClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: MultipleRoundedCurveClipper(),
//         //       child: Container(
//         //         height: 100,
//         //         color: Colors.pink,
//         //         child: const Center(child: Text("MultipleRoundedCurveClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 20.0),
//         //     ClipPath(
//         //       clipper: MultiplePointedEdgeClipper(),
//         //       child: Container(
//         //         height: 100,
//         //         color: Colors.green,
//         //         child: const Center(child: Text("MultiplePointedEdgeClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 20.0),
//         //     ClipPath(
//         //       clipper: OctagonalClipper(),
//         //       child: Container(
//         //         height: 220,
//         //         color: Colors.red,
//         //         child: const Center(child: Text("OctagonalClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: HexagonalClipper(),
//         //       child: Container(
//         //         height: 220,
//         //         color: Colors.blueAccent,
//         //         child: const Center(child: Text("HexagonalClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: HexagonalClipper(reverse: true),
//         //       child: Container(
//         //         height: 220,
//         //         color: Colors.orangeAccent,
//         //         child:
//         //             const Center(child: Text("HexagonalClipper(reverse: true)")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: ParallelogramClipper(),
//         //       child: Container(
//         //         height: 220,
//         //         color: Colors.pinkAccent,
//         //         child: const Center(child: Text("ParallelogramClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: DiagonalPathClipperOne(),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.red,
//         //         child: const Center(child: Text("DiagonalPathClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: DiagonalPathClipperTwo(),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.pink,
//         //         child: const Center(child: Text("DiagonalPathClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: WaveClipperOne(),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.deepPurple,
//         //         child: const Center(child: Text("WaveClipperOne()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: WaveClipperOne(reverse: true),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.deepPurple,
//         //         child: const Center(child: Text("WaveClipperOne(reverse: true)")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: WaveClipperTwo(),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.orange,
//         //         child: const Center(child: Text("WaveClipperTwo()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: WaveClipperTwo(reverse: true),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.orange,
//         //         child: const Center(child: Text("WaveClipperTwo(reverse: true)")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: RoundedDiagonalPathClipper(),
//         //       child: Container(
//         //         height: 320,
//         //         decoration: const BoxDecoration(
//         //           borderRadius: BorderRadius.all(Radius.circular(50.0)),
//         //           color: Colors.orange,
//         //         ),
//         //         child: const Center(child: Text("RoundedDiagonalPathClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10.0),
//         //     ClipPath(
//         //       clipper: OvalTopBorderClipper(),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.yellow,
//         //         child: const Center(child: Text("OvalTopBorderClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10),
//         //     ClipPath(
//         //       clipper: ArrowClipper(70, 80, Edge.LEFT),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.pink,
//         //         child: const Center(child: Text("ArrowClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10),
//         //     ClipPath(
//         //       clipper: ArrowClipper(70, 80, Edge.RIGHT),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.red,
//         //         child: const Center(child: Text("ArrowClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10),
//         //     ClipPath(
//         //       clipper: ArrowClipper(20, 300, Edge.TOP),
//         //       child: Container(
//         //         height: 70,
//         //         width: 50,
//         //         color: Colors.blue,
//         //         child: const Center(child: Text("ArrowClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10),
//         //     ClipPath(
//         //       clipper: ArrowClipper(70, 80, Edge.BOTTOM),
//         //       child: Container(
//         //         height: 120,
//         //         color: Colors.green,
//         //         child: const Center(child: Text("ArrowClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 10),
//         //     ClipPath(
//         //       clipper: StarClipper(8),
//         //       child: Container(
//         //         height: 450,
//         //         color: Colors.indigo,
//         //         child: const Center(child: Text("StarClipper()")),
//         //       ),
//         //     ),
//         //     ClipPath(
//         //       clipper: MessageClipper(borderRadius: 16),
//         //       child: Container(
//         //         height: 200,
//         //         decoration: const BoxDecoration(
//         //           borderRadius: BorderRadius.all(Radius.circular(16.0)),
//         //           color: Colors.red,
//         //         ),
//         //         child: const Center(child: Text("MessageClipper()")),
//         //       ),
//         //     ),
//         //     const SizedBox(height: 20),
//         //     ClipPath(
//         //       clipper: WavyCircleClipper(32),
//         //       child: Container(
//         //         width: 400,
//         //         height: 400,
//         //         color: Colors.purple,
//         //         child: const Center(child: Text("WavyCircleClipper()")),
//         //       ),
//         //     ),
//         //   ],
//         // ),

//         );
//   }
// }

// // import 'package:flutter/material.dart';

// // // import 'package:fruit_app/utilities/colors.dart';

// // class Tst extends StatelessWidget {
// //   const Tst({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Column(
// //         children: [
// //           Container(
// //             width: MediaQuery.of(context).size.width,
// //             height: MediaQuery.of(context).size.height,
// //             decoration: const BoxDecoration(
// //               gradient: LinearGradient(
// //                 end: Alignment.centerRight,
// //                 begin: Alignment.centerLeft,
// //                 colors: [
// //                   Colors.blue,
// //                   Colors.amber,
// //                 ],
// //               ),
// //             ),
// //             child: Stack(
// //               alignment: Alignment.topCenter,
// //               children: [
// //                 Container(
// //                   height: MediaQuery.of(context).size.height * .5,
// //                   decoration: const BoxDecoration(),
// //                   child: Stack(
// //                     children: [
// //                       Container(
// //                         width: MediaQuery.of(context).size.width,
// //                         height: MediaQuery.of(context).size.height * .5,
// //                         decoration: const BoxDecoration(
// //                             borderRadius: BorderRadius.only(
// //                               bottomRight: Radius.circular(100),
// //                             ),
// //                             image: DecorationImage(
// //                                 image: AssetImage('assets/images/bg.png'),
// //                                 fit: BoxFit.cover)),
// //                       ),
// //                       Positioned(
// //                         bottom: 0,
// //                         child: Container(
// //                           width: MediaQuery.of(context).size.width,
// //                           height: MediaQuery.of(context).size.height * .08,
// //                           decoration: const BoxDecoration(
// //                             borderRadius: BorderRadius.only(
// //                               bottomRight: Radius.circular(150),
// //                               topLeft: Radius.circular(150),
// //                             ),
// //                             gradient: LinearGradient(
// //                               end: Alignment.centerRight,
// //                               begin: Alignment.centerLeft,
// //                               colors: [
// //                                 Colors.blue,
// //                                 Colors.amber,
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 Positioned(
// //                   bottom: 0,
// //                   child: Container(
// //                     decoration: const BoxDecoration(
// //                       gradient: LinearGradient(
// //                         end: Alignment.centerRight,
// //                         begin: Alignment.centerLeft,
// //                         colors: [
// //                           Colors.blue,
// //                           Colors.amber,
// //                         ],
// //                       ),
// //                     ),
// //                     child: Container(
// //                       width: MediaQuery.of(context).size.width,
// //                       height: MediaQuery.of(context).size.height * .5,
// //                       decoration: const BoxDecoration(
// //                           borderRadius: BorderRadius.only(
// //                             topLeft: Radius.circular(120),
// //                           ),
// //                           color: Colors.white),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
          
// //         ],
// //       ),

// //     );
// //   }
// // }

// // class RightConcaveClipper extends CustomClipper<Path> {
// //   @override
// //   Path getClip(Size size) {
// //     return Path()
// //       ..lineTo(size.width, 0)
// //       ..cubicTo(size.width - 20, 25, size.width - 20, 30, size.width - 30, 30)
// //       ..cubicTo(size.width - 62, 30, size.width - 62, 70, size.width - 30, 70)
// //       ..cubicTo(size.width - 20, 70, size.width, 90, size.width, 90)
// //       ..lineTo(size.width, size.height)
// //       ..lineTo(0, size.height);
// //   }

// //   @override
// //   bool shouldReclip(CustomClipper oldClipper) {
// //     return oldClipper != this;
// //   }
// // }

// // // class CurlyBottomContainer extends StatelessWidget {
// // //   final double width;
// // //   final double height;
// // //   final Color color;
// // //   final double curveHeight;

// // //   const CurlyBottomContainer({
// // //     super.key,
// // //     required this.width,
// // //     required this.height,
// // //     required this.color,
// // //     this.curveHeight = 30.0,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SizedBox(
// // //       width: width,
// // //       height: height,
// // //       child: CustomPaint(
// // //         painter: _CurlyPainter(
// // //           color: color,
// // //           curveHeight: curveHeight,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class _CurlyPainter extends CustomPainter {
// // //   final Color color;
// // //   final double curveHeight;

// // //   _CurlyPainter({
// // //     required this.color,
// // //     required this.curveHeight,
// // //   });

// // //   @override
// // //   void paint(Canvas canvas, Size size) {
// // //     final paint = Paint()..color = color;

// // //     final path = Path()
// // //       ..moveTo(0, size.height)
// // //       ..lineTo(0, curveHeight);

// // //     final double controlPointX1 = size.width * 0.25;
// // //     final double controlPointX2 = size.width * 0.75;
// // //     final double controlPointY = curveHeight * 0.5;

// // //     path.cubicTo(
// // //       controlPointX1,
// // //       0,
// // //       controlPointX2,
// // //       0,
// // //       size.width,
// // //       curveHeight,
// // //     );

// // //     path.lineTo(size.width, size.height);
// // //     path.lineTo(0, size.height);
// // //     path.close();

// // //     canvas.drawPath(path, paint);
// // //   }

// // //   @override
// // //   bool shouldRepaint(_CurlyPainter oldDelegate) => false;
// // // }

// // // import 'package:flutter/material.dart';

// // // class CurvyBottomContainer extends StatelessWidget {
// // //   final double width;
// // //   final double height;
// // //   final Color color;
// // //   final double curveHeight;

// // //   const CurvyBottomContainer({
// // //     super.key,
// // //     required this.width,
// // //     required this.height,
// // //     required this.color,
// // //     this.curveHeight = 30.0,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SizedBox(
// // //       width: width,
// // //       height: height,
// // //       child: CustomPaint(
// // //         painter: _CurvyPainter(
// // //           color: color,
// // //           curveHeight: curveHeight,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class _CurvyPainter extends CustomPainter {
// // //   final Color color;
// // //   final double curveHeight;

// // //   _CurvyPainter({
// // //     required this.color,
// // //     required this.curveHeight,
// // //   });

// // //   @override
// // //   void paint(Canvas canvas, Size size) {
// // //     final paint = Paint()..color = color;

// // //     final path = Path()
// // //       ..moveTo(0, size.height)
// // //       ..lineTo(0, curveHeight)
// // //       ..quadraticBezierTo(
// // //         size.width / 2,
// // //         0,
// // //         size.width,
// // //         curveHeight,
// // //       )
// // //       ..lineTo(size.width, size.height)
// // //       ..close();

// // //     canvas.drawPath(path, paint);
// // //   }

// // //   @override
// // //   bool shouldRepaint(_CurvyPainter oldDelegate) => false;
// // // }

// // // 

// // // class WavyBottomContainer extends StatelessWidget {
// // //   final double width;
// // //   final double height;
// // //   final Color color;
// // //   final double waveHeight;
// // //   final int waveCount;

// // //   const WavyBottomContainer({
// // //     Key? key,
// // //     required this.width,
// // //     required this.height,
// // //     required this.color,
// // //     this.waveHeight = 20.0,
// // //     this.waveCount = 3,
// // //   }) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SizedBox(
// // //       width: width,
// // //       height: height,
// // //       child: CustomPaint(
// // //         painter: _WavyPainter(
// // //           color: color,
// // //           waveHeight: waveHeight,
// // //           waveCount: waveCount,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class _WavyPainter extends CustomPainter {
// // //   final Color color;
// // //   final double waveHeight;
// // //   final int waveCount;

// // //   _WavyPainter({
// // //     required this.color,
// // //     required this.waveHeight,
// // //     required this.waveCount,
// // //   });

// // //   @override
// // //   void paint(Canvas canvas, Size size) {
// // //     final paint = Paint()..color = color;

// // //     final path = Path()..moveTo(0, size.height);

// // //     final waveWidth = size.width / (waveCount * 2);

// // //     for (int i = 0; i < waveCount; i++) {
// // //       final x = (i * 2 + 1) * waveWidth;
// // //       path.cubicTo(
// // //         x - waveWidth / 2,
// // //         size.height - waveHeight,
// // //         x - waveWidth / 4,
// // //         size.height,
// // //         x,
// // //         size.height - waveHeight,
// // //       );
// // //       path.cubicTo(
// // //         x + waveWidth / 4,
// // //         size.height - 2 * waveHeight,
// // //         x + waveWidth / 2,
// // //         size.height - waveHeight,
// // //         x + waveWidth,
// // //         size.height - waveHeight,
// // //       );
// // //     }

// // //     path.lineTo(size.width, size.height);
// // //     path.lineTo(0, size.height);
// // //     path.close();

// // //     canvas.drawPath(path, paint);
// // //   }

// // //   @override
// // //   bool shouldRepaint(_WavyPainter oldDelegate) => false;
// // // }
