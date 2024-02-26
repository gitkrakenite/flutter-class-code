import 'package:flutter/material.dart';

var names = ["Jack", "John", "Grace", "Mike", "Dida"];

var completeTask = [
  {
    "name": "Jack",
    "photo":
        "https://images.pexels.com/photos/1462630/pexels-photo-1462630.jpeg?auto=compress&cs=tinysrgb&w=400",
    "email": "jack@example.com",
    "phone": "082838232332"
  },
  {
    "name": "Max",
    "photo":
        "https://images.pexels.com/photos/1462630/pexels-photo-1462630.jpeg?auto=compress&cs=tinysrgb&w=400",
    "email": "max@example.com",
    "phone": "082838232332"
  }
];

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Image.network(
              "https://images.pexels.com/photos/1462630/pexels-photo-1462630.jpeg?auto=compress&cs=tinysrgb&w=400",
              height: 100,
              width: 100,
            ),
            Column(
              children: [
                Text(completeTask[index]["name"] ?? ''),
                Text("030203232332"),
                Text("jackson@example.com"),
              ],
            )
          ],
        );
      },
      itemCount: completeTask.length,
    );
  }
}
