import 'package:crud/model/profile_model.dart';
import 'package:crud/page18.dart';
import 'package:crud/page19.dart'; // ปรับตามต้องการ
import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  List<ProfileModel> profile = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "บุคคล",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: profile.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(profile[index].name_li),
            trailing: IconButton(
              onPressed: () async {
                var value = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page19(profile, index),
                  ),
                );

                if (value != null) {
                  // Update the profile list with the edited value
                  profile[index] = value;
                  setState(() {});
                }
              },
              icon: Icon(Icons.edit),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var value = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Page18()),
          );

          if (value != null) {
            profile.add(value);
            setState(() {});
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}