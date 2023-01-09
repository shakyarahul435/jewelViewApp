import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Necklace extends StatefulWidget {
  // const ring({Key? key}) : super(key: key);
  @override
  State<Necklace> createState() => _NecklaceState();
}

class _NecklaceState extends State<Necklace> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [

            CustomImage(assetImage: 'images/Necklace1.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace2.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace3.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace4.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace5.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace6.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace7.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace8.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace9.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace10.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace11.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Necklace12.jpg',),



          ],
        ),
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  // const customImage({Key? key}) : super(key: key);
  CustomImage({this.height ,this.child,this.color, this.imageProvider,this.assetImage});

  final double height;
  final Widget child;
  final Widget imageProvider;
  final String assetImage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(height: 320,
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
    return Container(width: 600,
      height: 2,
      color: Color(0xff4949e6),);
  }
}

