import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  // const add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Add Image"),
      //   actions: [TextButton(onPressed: () {}, child: Text("Upload"))],
      // ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return index == 0
              ? Center(
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                )
              : Container();
        },
      ),
    );
  }
}
