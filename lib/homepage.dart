import 'package:flutter/material.dart';

import 'my note.dart';

class HOMEPAGE extends StatefulWidget {
  const HOMEPAGE({Key? key}) : super(key: key);
  @override
  State<HOMEPAGE> createState() => _HOMEPAGEState();
}

class _HOMEPAGEState extends State<HOMEPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              "Asset/download.jpeg",
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NAV()));
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.blue[900]),
            child: const Text(
              "Get Started",
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      )),
    );
  }
}
