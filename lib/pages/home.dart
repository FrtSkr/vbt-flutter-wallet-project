import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18182A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF18182A),
        elevation: 0,
        actions: [
          Row(
            children: [
              Column(
                children: const [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "VBT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 200, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF272A3F),
                  ),
                  child: const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                //Kartlar Listesi
                Row(
                  children: [
                    //Icon widgets
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
