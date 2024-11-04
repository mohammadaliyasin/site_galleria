import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:site_galleria/premiumReport.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _showOrbitalLine = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181824),
      body: Stack(
        children: [
          Positioned(
            left: -40.w,
            top: 280.h,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _showOrbitalLine = !_showOrbitalLine;
                });
              },
              child: Stack(
                children: [
                  Container(
                    width: 150.w,
                    height: 150.h,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff0C359E), Color(0xff7495E8)]),
                      shape: BoxShape.circle,
                    ),
                  ),
                  if (_showOrbitalLine)
                    CustomPaint(
                      size: Size(300.w, 300.h),
                      painter: OrbitalLinePainter(),
                    ),
                  if (_showOrbitalLine)
                    iconName(75.w, 140.h, 'assets/5.png', 'Bussiness', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PremiumReport(tabIndex: 4,)),
                      );
                    }),
                  if (_showOrbitalLine)
                    iconName(145.w, 85.h, 'assets/2.png', 'Career', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>PremiumReport(tabIndex: 1,)),
                      );
                    }),
                  if (_showOrbitalLine)
                    iconName(60.w, 215.h, 'assets/4.png', 'Health', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PremiumReport(tabIndex: 3,)),
                      );
                    }),
                  if (_showOrbitalLine)
                    iconName(160.w, 170.h, 'assets/3.png', 'Family', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PremiumReport(tabIndex: 2,)),
                      );
                    }),
                  if (_showOrbitalLine)
                    iconName(220.w, 60.h, 'assets/1.png', 'Marriage', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  PremiumReport(tabIndex: 0,)),
                      );
                    }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget iconName(
    double left,
    double top,
    String image,
    String text,
    VoidCallback onTap,
  ) {
    return Positioned(
      left: left,
      top: top,
      child: Stack(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: onTap,
                child: CircleAvatar(
                  radius: 30.r,
                  backgroundColor: const Color.fromRGBO(61, 63, 109, 0.3),
                  backgroundImage: AssetImage(image),
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  color: const Color(0xff7495E8),
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OrbitalLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff7495E8)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4;
    final paint1 = Paint()
      ..color = const Color(0xffCAD9FF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;
    final paint2 = Paint()
      ..color = const Color(0xffCAD9FF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4;

    canvas.drawCircle(
      Offset(size.width / 4, size.height / 4.9),
      size.width / 2.9,
      paint1,
    );
    canvas.drawCircle(
      Offset(size.width / 4, size.height / 4),
      size.width / 1.7,
      paint,
    );
    canvas.drawCircle(
      Offset(size.width / 4, size.height / 2.7),
      size.width / 1.3,
      paint1,
    );
    canvas.drawCircle(
      Offset(size.width / 4, size.height / 4),
      size.width / 1.1,
      paint2,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
