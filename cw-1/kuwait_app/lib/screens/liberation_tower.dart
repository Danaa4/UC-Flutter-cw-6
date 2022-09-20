import 'package:flutter/material.dart';

class Liberation extends StatelessWidget {
  const Liberation({super.key});

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
                'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
              ),
            ),
            Container(
              height: 50,
            ),
            Text(
              'برج التحرير',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
