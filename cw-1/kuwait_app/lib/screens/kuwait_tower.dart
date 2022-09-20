import 'package:flutter/material.dart';

class KuwaitTower extends StatelessWidget {
  const KuwaitTower({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 52, 86),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 150,
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
              ),
            ),
            Container(
              height: 50,
            ),
            Text(
              "أبراج الكويت",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
