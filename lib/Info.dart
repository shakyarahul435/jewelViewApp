import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  // const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                '-Personal Information',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your First Name',
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue)),
                ),
                maxLength: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Enter your Second Name',
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue))),
                maxLength: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Enter your Mobile Number',
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue))),
                maxLength: 10,
                keyboardType: TextInputType.number,
              ),
              // TextFormField(
              //   decoration: InputDecoration(
              //       labelText: 'Enter Jewellery Design you want',
              //       border: OutlineInputBorder(
              //           borderRadius: new BorderRadius.circular(12),
              //           borderSide: BorderSide(color: Colors.blue))),
              //   maxLength: 10,
              // ),

              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: this.valuefirst,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuefirst = value;
                        });
                      }),
                  Text(
                    "Ring",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: this.valuesecond,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuesecond = value;
                        });
                      }),
                  Text(
                    "Necklace",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: this.valuethird,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuethird = value;
                        });
                      }),
                  Text(
                    "Ear Ring",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Container(
                  color: Color(0xff4949e6),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
//preety product list
