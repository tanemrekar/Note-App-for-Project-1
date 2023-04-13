import 'package:flutter/material.dart';

import 'NewNote.dart';

class NAV extends StatefulWidget {
  const NAV({Key? key}) : super(key: key);

  @override
  State<NAV> createState() => _NAVState();
}

class _NAVState extends State<NAV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: const Text(
          "My Notes",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage("Asset/task.png")),
              SizedBox(
                height: 20,
              ),
              Text(
                "No Notes:(",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
                ),
              ),
              Text(
                "You have no task to do.",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SUCCESS()));
        },
        backgroundColor: const Color(0xFF283593),
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
