import 'package:flutter/material.dart';
import 'package:untitled/drawer_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "drawer_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  DrawerPage(name: 'Muhriddin Yoriqulov',),
      appBar: AppBar(
        title: Text("Side Bar page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Drawer"),
      ),
    );
  }
}
