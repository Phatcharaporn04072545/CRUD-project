import 'package:crud/model/profile_model.dart';
import 'package:flutter/material.dart';

class Page19 extends StatefulWidget {
  final List<ProfileModel> profile;
  final int index;

  Page19(this.profile, this.index);

  @override
  _Page19State createState() => _Page19State();
}

class _Page19State extends State<Page19> {
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.profile[widget.index].name_li;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แก้ไขข้อมูล"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'ชื่อ'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ตัวอย่างการบันทึกข้อมูลแก้ไข
                widget.profile[widget.index].name_li = _nameController.text;
                Navigator.pop(context, widget.profile);
              },
              child: Text('บันทึก'),
            ),
          ],
        ),
      ),
    );
  }
}