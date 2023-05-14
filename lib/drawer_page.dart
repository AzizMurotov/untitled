import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  String? name;

  DrawerPage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.light_mode),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(name!),
                const SizedBox(
                  height: 10,
                ),
                const Text("azizmutotov@gmail.com"),
              ],
            ),
          ),
          Text("dfg"),
        ],
      ),
    );
  }
}
