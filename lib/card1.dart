import 'package:flutter/material.dart';

class card1 extends StatefulWidget {
  const card1({Key? key}) : super(key: key);

  @override
  State<card1> createState() => _card1State();
}

class _card1State extends State<card1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.house_rounded,
                  size: 40,
                  color: Colors.brown,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "5 Task",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Work",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                    Text(
                      "Office project work",
                      style: TextStyle(fontSize: 8, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              children: const [
                Text(
                  "2-completed     ",
                  style: TextStyle(color: Colors.green),
                ),
                Text(
                  "|",
                ),
                Text(
                  "  2-due",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
