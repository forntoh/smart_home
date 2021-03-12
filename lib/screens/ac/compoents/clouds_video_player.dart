import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fast_noise/fast_noise.dart';

import 'dart:ui' as ui;

class CloudsVideo extends StatefulWidget {
  final int speed;

  const CloudsVideo({
    Key key,
    this.speed = 1,
  }) : super(key: key);

  @override
  _CloudsVideoState createState() => _CloudsVideoState();
}

class _CloudsVideoState extends State<CloudsVideo> {
  ui.Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Opacity(
        opacity: 0.5,
        child: image == null
            ? FutureBuilder<ui.Image>(
                future: makeImage(MediaQuery.of(context).size, 1337),
                builder: (context, snapshot) {
                  image = snapshot.data;
                  return CustomPaint(painter: NoiseTexturePainter(image));
                },
              )
            : CustomPaint(painter: NoiseTexturePainter(image)),
      ),
    );
  }
}

class NoiseTexturePainter extends CustomPainter {
  final ui.Image image;

  NoiseTexturePainter(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    var center = Offset(size.width / 2, size.height / 2);

    canvas.drawImage(
      image,
      Offset.zero,
      Paint(),
    );

    canvas.drawRect(
      Rect.fromCenter(center: center, width: size.width, height: size.height),
      Paint()
        ..shader = ui.Gradient.radial(center, size.height / 1.5,
            [Colors.black, Colors.black, Colors.transparent], [0, 0.4, 1])
        ..blendMode = BlendMode.modulate
        ..invertColors = true,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

Future<ui.Image> makeImage(Size size, int seed) {
  var width = size.width.toInt();
  var height = size.height.toInt();

  var noise2 = SimplexNoise(
    octaves: 4,
    frequency: 0.0075,
    gain: 0.5,
    seed: seed,
  );

  final c = Completer<ui.Image>();

  final pixels = Int32List(width * height);

  for (var x = 0; x < width; x++) {
    for (var y = 0; y < height; y++) {
      var luminance = noise2.getSimplexFractal2(x.toDouble(), y.toDouble());
      var value = (128 + 128 * luminance).floor();
      var color = Color.fromARGB(value, value, value, value);
      pixels[y * width + x] = color.value;
    }
  }

  ui.decodeImageFromPixels(
    pixels.buffer.asUint8List(),
    width,
    height,
    ui.PixelFormat.rgba8888,
    c.complete,
  );

  return c.future;
}
