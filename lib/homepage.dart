import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePAge extends StatefulWidget {
  const MyHomePAge({super.key});

  @override
  State<MyHomePAge> createState() => _MyHomePAgeState();
}

class _MyHomePAgeState extends State<MyHomePAge> {
  List names = ["dsg" , "sgsehsdhk" , "sgsdihgs" , "sgshgb " , "tgdisfbvsh", "dsg" , "sgsehsdhk" , "sgsdihgs" , "sgshgb " , "tgdisfbvsh"];
  List<Color> reccolor = [Colors.blue , Colors.red , Colors.green , Colors.deepOrangeAccent , Colors.lime , Colors.purple , Colors.cyan, Colors.indigo , Colors.blueGrey , Colors.lightBlueAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "GDSC Book Store",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.sort,
          size: 30,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search bar
              Container(
                height: 100,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search",
                              suffixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              )),
                        ),
                      ),
                       Container(
                        width: 50,
                        child: Icon(
                          Icons.tune,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.red
                        ]
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 0),
                          blurRadius: 5)
                    ]),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Something",
                      style:
                          TextStyle(
                            color: Colors.orange,
                              fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.share,
                          size: 30,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.comment,
                          size: 30,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.yellow,
                        )
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 50,
              ),
              // recommendation
              const Text(
                "Recommendation",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: reccolor[index],
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                              child: Text(
                                names[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                                ),
                              )
                          ),
                  ),
                      );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
