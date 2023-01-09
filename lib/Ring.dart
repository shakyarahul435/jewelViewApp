import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Ring extends StatefulWidget {
  // const ring({Key? key}) : super(key: key);
  @override
  State<Ring> createState() => _RingState();
}

class _RingState extends State<Ring> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            CustomImage(
              assetImage: 'images/ring1.jpg',
            ),
            CustomLine(),
            CustomImage(
              assetImage: 'images/ring2.jpg',
            ),
            CustomLine(),
            CustomImage(
              assetImage: 'images/ring3.jpg',
            ),
            CustomLine(),
            CustomImage(
              assetImage: 'images/ring4.jpg',
            ),
            CustomLine(),
            CustomImage(
              assetImage: 'images/ring5.jpg',
            ),
            CustomLine(),
            CustomImage(
              assetImage: 'images/ring6.jpg',
            ),
            CustomLine(),
            CustomImage(
              assetImage: 'images/ring7.jpg',
            ),
            CustomLine(),
            CustomImage(
              assetImage: 'images/ring8.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  // const customImage({Key? key}) : super(key: key);
  CustomImage(
      {this.height,
      this.child,
      this.color,
      this.imageProvider,
      this.assetImage});

  final double height;
  final Widget child;
  final Widget imageProvider;
  final String assetImage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      color: Colors.white,
      child: PhotoView(
        imageProvider: AssetImage(assetImage),
        backgroundDecoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}

class CustomLine extends StatelessWidget {
  // const customLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 2,
      color: Color(0xff4949e6),
    );
  }
}
