import 'package:flutter/material.dart';
import 'package:my_app/FourthRoute.dart';
import 'package:my_app/SecondRoute.dart';
import 'package:my_app/ThirdRoute.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Column(children: [
        // Image.network(
        //   'https://picsum.photos/250?image=9',
        // ),
        Card(
            child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdRoute()),
                  );
                },
                child: Column(
                  children: [
                    Hero(
                        tag: 'imageHero',
                        child: Image.network(
                          'https://picsum.photos/250?image=9',
                        )),
                    const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('A card that can be tapped'),
                    )
                  ],
                ))),
        ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
        ElevatedButton(
          child: const Text('FourthRoute'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FourthRoute()),
            );
          },
        ),
      ]),
    );
  }
}
