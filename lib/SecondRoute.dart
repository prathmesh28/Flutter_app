import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
        ),
        body: const MyApp());
  }
}

// ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;
    // print(media);
    return MaterialApp(
      // title: '',
      home: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: AppBar(
                backgroundColor: const Color.fromARGB(255, 165, 0, 137),
              )),
          body: Column(
            children: [
              SizedBox(
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Flexible(
                      fit: FlexFit.loose,
                      flex: 1,
                      child: Text(
                        'Strawberry Pavlova',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.5,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Flexible(
                        fit: FlexFit.loose,
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: const Text(
                            'Pavlova is a meringue-based dessert named after the Russian ballerina '
                            'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
                            'topped with fruit and whipped cream.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Georgia',
                              fontSize: 25,
                            ),
                          ),
                        )),
                    Flexible(
                      fit: FlexFit.loose,
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 243, 100, 212),
                          ),
                          const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 243, 100, 212),
                          ),
                          const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 243, 100, 212),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: const Text(
                              '170 Reviews',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Roboto',
                                letterSpacing: 0.5,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                        fit: FlexFit.loose,
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(Icons.kitchen,
                                    color: Color.fromARGB(255, 76, 175, 80)),
                                Text(
                                  'PREP:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.5,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  '25 min',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.5,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(Icons.timer,
                                    color: Color.fromARGB(255, 76, 175, 80)),
                                Text(
                                  'COOK:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.5,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  '1 hr',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.5,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(Icons.restaurant,
                                    color: Color.fromARGB(255, 76, 175, 80)),
                                Text(
                                  'FEEDS:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.5,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  '4-6',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.5,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 210,
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          '1625 Main Street',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text('My City, CA 99984'),
                        leading: Icon(
                          Icons.restaurant_menu,
                          color: Colors.blue[500],
                        ),
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text(
                          '(408) 555-1212',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        leading: Icon(
                          Icons.contact_phone,
                          color: Colors.blue[500],
                        ),
                      ),
                      ListTile(
                        title: const Text('costa@example.com'),
                        leading: Icon(
                          Icons.contact_mail,
                          color: Colors.blue[500],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
