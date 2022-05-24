import 'package:flutter/material.dart';
import 'card.dart';
import 'card1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 246, 245),
        foregroundColor: Colors.black,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.house_rounded),
          Padding(padding: EdgeInsets.only(right: 10))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: const Carditem(),
          ),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisCount: 2,
            children: const [
              CardPage(),
              card1(),
              CardPage(),
              card1(),
            ],
          ),
        ],
      ),
    );
  }
}

class Carditem extends StatefulWidget {
  const Carditem({Key? key}) : super(key: key);

  @override
  State<Carditem> createState() => _CarditemState();
}

class _CarditemState extends State<Carditem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Most Priority Task",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.work,
                        size: 40,
                        color: Colors.brown,
                      ),
                      const Icon(
                        Icons.check_box_outline_blank,
                        color: Colors.grey,
                        size: 24,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Task Title",
                          ),
                          Text(
                            "Task Title Description",
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.red,
                  size: 30,
                ),
                Text(
                  "Start",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w700),
                ),
                Text("2:00:00"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/*  */
