import 'package:flutter/material.dart';

class GrandMosque extends StatelessWidget {
  const GrandMosque({super.key});

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
                'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
              ),
            ),
            Container(
              height: 50,
            ),
            Text(
              'المسجد الكبير',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
