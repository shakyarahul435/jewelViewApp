import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class All extends StatefulWidget {
  // all({Key key, this.title}) : super(key: key);

  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  XFile _image;
  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile image = await _picker.pickImage(source: ImageSource.gallery);
    //pick an image

    // final image = await ImagePick.pickimage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return index == 0
                      ? Center(
                          child: IconButton(
                            color: Color(0xff4949e6),
                            icon: Icon(Icons.add),
                            onPressed: getImage,
                          ),
                        )
                      : Container();
                }),
            SizedBox(
              height: 5,
            ),
            Center(
              child: _image == null
                  ? Text(
                      "All Jewelleries",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    )
                  : Image.file(File(_image.path)),
            ),
            Text("Jewell"),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color(0xff4949e6),
      //   child: Icon(Icons.add),
      //   onPressed: getImage,
      // ),
    );

    // );
  }
}

// chooseImage() async{
//   // final pickedFile= await picker.getImage;
//   final ImagePicker _picker = ImagePicker();
//   final XFile image = await _picker.pickImage(source: ImageSource.gallery);
// }
