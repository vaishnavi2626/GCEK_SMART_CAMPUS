import 'package:flutter/material.dart';

class food1 extends StatelessWidget {
  const food1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Red Chilli Hotel & Resto',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 160, 6),
        elevation: 4.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Row(
                children: [
                  Card(
                    color: const Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    // child: const SizedBox(
                    //   width: 300,
                    //   height: 100,
                    //   //child: Center(child: Text('Outlined Card')),
                    // ),
                    child: InkWell(
                      child: SizedBox(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/images/red chilli1.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Column(
                                children: [
                                  Text(
                                    "Chicken Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "unlimited roti,Rassa,Egg curry,Unlimited Rice",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.210",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 75),
                  Card(
                    color: const Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    // child: const SizedBox(
                    //   width: 300,
                    //   height: 100,
                    //   //child: Center(child: Text('Outlined Card')),
                    // ),
                    child: InkWell(
                      child: SizedBox(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/images/red chilli2.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Column(
                                children: [
                                  Text(
                                    "Veg Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "Unlimited Roti & Rice,Rassa, Panir Tikka",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.150",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Row(
                children: [
                  Card(
                    color: const Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    // child: const SizedBox(
                    //   width: 300,
                    //   height: 100,
                    //   //child: Center(child: Text('Outlined Card')),
                    // ),
                    child: InkWell(
                      child: SizedBox(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/images/red chilli1.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Column(
                                children: [
                                  Text(
                                    "Chicken Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "unlimited roti,Rassa,Egg curry,Unlimited Rice",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.210",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 75),
                  Card(
                    color: const Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    // child: const SizedBox(
                    //   width: 300,
                    //   height: 100,
                    //   //child: Center(child: Text('Outlined Card')),
                    // ),
                    child: InkWell(
                      child: SizedBox(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/images/red chilli2.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Column(
                                children: [
                                  Text(
                                    "Veg Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "Unlimited Roti & Rice,Rassa, Panir Tikka",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.150",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Row(
                children: [
                  Card(
                    color: const Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    // child: const SizedBox(
                    //   width: 300,
                    //   height: 100,
                    //   //child: Center(child: Text('Outlined Card')),
                    // ),
                    child: InkWell(
                      child: SizedBox(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/images/red chilli1.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Column(
                                children: [
                                  Text(
                                    "Chicken Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "unlimited roti,Rassa,Egg curry,Unlimited Rice",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.210",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 75),
                  Card(
                    color: const Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    // child: const SizedBox(
                    //   width: 300,
                    //   height: 100,
                    //   //child: Center(child: Text('Outlined Card')),
                    // ),
                    child: InkWell(
                      child: SizedBox(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/images/red chilli2.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Column(
                                children: [
                                  Text(
                                    "Veg Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "Unlimited Roti & Rice,Rassa, Panir Tikka",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.150",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
