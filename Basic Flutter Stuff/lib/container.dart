import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // Alignment coordinates: takes double
              // X-axis: -1 (left) to 1 (right)
              // Y-axis: -1 (top) to 1 (bottom)
              alignment: const Alignment(1, -1),
              padding: const EdgeInsets.all(20),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  // need to provide color inside decoration, not outside
                  // color: Colors.deepPurple,
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                'hello',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                  // borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
