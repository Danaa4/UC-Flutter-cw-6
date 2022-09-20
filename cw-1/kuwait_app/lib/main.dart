import 'package:flutter/material.dart';
import 'package:kuwait_app/screens/grand_mosque.dart';
import 'package:kuwait_app/screens/kuwait_tower.dart';
import 'package:kuwait_app/screens/liberation_tower.dart';

import 'models/building.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var buildings = [
    Building(
      name: 'أبراج الكويت',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
      page: KuwaitTower(),
      description: "تقع ابراج الكويت علـي شاطئ الخليج العربي في منطقه شرق",
    ),
    Building(
      name: 'برج التحرير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
      page: Liberation(),
      description: "احد اهم المعالم في دوله الكويت.",
    ),
    Building(
      name: 'المسجد الكبير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
      page: GrandMosque(),
      description: "أكبر مسجد في الكويت.",
    ),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Kuwait City LandMarks"),
          backgroundColor: Color.fromARGB(255, 11, 52, 86),
        ),
        body: ListView.builder(
            itemCount: buildings.length,
            itemBuilder: ((context, index) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                        ),
                      ],
                    ),
                    Card(
                      elevation: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(
                                buildings[index].imgUrl,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              buildings[index].name,
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          buildings[index].page),
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.arrow_circle_right_outlined,
                                  size: 40.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                        ),
                      ],
                    ),
                  ]);
            })),
      ),
    );
  }
}
