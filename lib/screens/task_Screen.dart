import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  // List<Widget> chil() {
  //   List<Widget> l = [];
  //   for (int i = 1; i <= 40; i++) {
  //     l.add(
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Container(
  //           decoration: BoxDecoration(boxShadow: [
  //             BoxShadow(
  //               color: Colors.amber,
  //               blurRadius: 0.0,
  //               spreadRadius: 0.0,
  //             ),
  //           ]),
  //           child: Text(
  //             'this is task $i',
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //               fontSize: 17.0,
  //             ),
  //           ),
  //         ),
  //       ),
  //     );
  //   }
  //   return l;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 70.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35.0,
                    child: Icon(
                      Icons.list,
                      size: 55.0,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'To-Do',
                    style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '7 Tasks',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TaskList(),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
