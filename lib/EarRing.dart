import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class EarRing extends StatefulWidget {
  // const ring({Key? key}) : super(key: key);
  @override
  State<EarRing> createState() => _EarRingState();
}

class _EarRingState extends State<EarRing> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            CustomImage(assetImage: 'images/Ear1.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear2.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear3.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear4.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear5.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear6.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear7.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear8.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear9.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear10.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear11.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear12.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear13.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear14.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear15.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear16.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear17.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear18.jpg',),
            CustomLine(),
            CustomImage(assetImage: 'images/Ear19.jpg',),



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

// class CustomView extends StatelessWidget {
//   // const CustomView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(child: InteractiveViewer(child: clipBehavior:Clip.none,),);
//   }
// }


