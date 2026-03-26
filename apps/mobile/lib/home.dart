import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        color: const Color(0xFF4A0D02),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 100,
              child: Container(
                width: 255,
                height: 255,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF8A5A1C),
                ),
              ),
            ),
            Positioned(
              left: -25,
              bottom: -50,
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Color(0xff926864),
                  BlendMode.modulate,
                ),
                child: Image.asset("asset/person.png", width: 440),
              ),
            ),
            Positioned(
              top: 5,
              right: 30,
              child: Material(
                color: Colors.transparent,
                shape: const CircleBorder(),
                clipBehavior: Clip.antiAlias,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white70,
                    size: 35,
                  ),
                  hoverColor: Colors.white.withValues(alpha: 0.1),
                  highlightColor: Colors.white.withValues(alpha: 0.2),
                  splashColor: Colors.white.withValues(alpha: 0.2),
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              top: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Movie",
                    style: TextStyle(
                      fontSize: 65,
                      color: Color(0xFFC0C0C0),
                      fontStyle: FontStyle.italic,
                      height: 1.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Column(
                      children: [
                        const Text(
                          "TIME",
                          style: TextStyle(
                            fontSize: 32,
                            color: Color(0xFF2E1511),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            height: 0.6,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 70,
                          height: 5,
                          child: CustomPaint(painter: ExactZigZagPainter()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Philm",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 0),
                  Text(
                    "watch and let your soul drift",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExactZigZagPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF9E5B22)
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    int points = 8;
    double step = size.width / points;

    path.moveTo(0, size.height);

    for (int i = 1; i <= points; i++) {
      double y = (i % 2 != 0) ? 0 : size.height;
      path.lineTo(i * step, y);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
