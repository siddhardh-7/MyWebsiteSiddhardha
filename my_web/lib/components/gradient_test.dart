import 'package:flutter/material.dart';
import '../constants.dart';

class LinearTextGradient extends StatelessWidget {
  const LinearTextGradient({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return GradientText(
      title,
      gradient: const LinearGradient(
        colors: [
          Color.fromRGBO(57, 206, 192, 100.0),
          Color.fromRGBO(57, 206, 192, 18.0),
          Color.fromRGBO(57, 206, 192, 0.0),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      style: const TextStyle(
        color: kTextColor,
        fontFamily: "Coda",
        fontSize: 69.0,
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style ??
            const TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
              fontFamily: "Coda-ExtraBold.tff",
              fontSize: 92.0,
            ),
      ),
    );
  }
}
