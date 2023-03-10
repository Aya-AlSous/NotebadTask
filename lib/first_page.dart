import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        appBar: AppBar(),
        body: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(30, 50, 20, 5),
            child: Column(mainAxisSize: MainAxisSize.max, children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Notepad",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.height / 20,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: size.height / 18,
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(2),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    hintText: 'Search notes',
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(130, 255, 176, 0.73),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                width: size.width,
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Text("Todays grocery list",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height / 40,
                              fontWeight: FontWeight.w400)),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Text("June 26, 2022 08:05 PM",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height / 50,
                              fontWeight: FontWeight.w300)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 251, 130, 0.73),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                width: size.width,
                margin: const EdgeInsets.all(10),
                child: Column(
                  textDirection: TextDirection.ltr,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(5),
                      child: Text("Rich dad Poor dad quotes",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height / 40,
                              fontWeight: FontWeight.w400)),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 4),
                      child: Text("June 22, 2022 05:00 PM",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height / 50,
                              fontWeight: FontWeight.w300)),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
