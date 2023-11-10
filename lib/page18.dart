import 'package:crud/model/profile_model.dart';
import 'package:flutter/material.dart';

class Page18 extends StatefulWidget {
  const Page18({super.key});

  @override
  State<Page18> createState() => _Page18State();
}

class _Page18State extends State<Page18> {
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เพิ่มบุคคล",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Form(
          child: Column(
            children: <Widget>[
              Pictureicon(),
              textHeader("ชื่อ"),
              textFormF("name", "กรุณาใส่ชื่อ", name),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          print('name : ' + name.text);
                          ProfileModel profile = new ProfileModel(
                            name.text
                            );
                            Navigator.pop(context,profile);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        child: Text('เพิ่ม'),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding textFormF(
      String lText, String hText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            labelText: lText,
            hintText: hText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }

  Padding textHeader(String headText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("ใส่ชื่อ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Colors.black,
          )),
    );
  }

  Padding Pictureicon() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        Icons.insert_photo,
        size: 300,
      ),
    );
  }
}
