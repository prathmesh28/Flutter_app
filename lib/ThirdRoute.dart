import 'package:flutter/material.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Third Route')),
        body: Card(
            child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Column(children: [
                  Hero(
                      tag: 'imageHero',
                      child: Image.network(
                        'https://picsum.photos/250?image=9',
                      )),
                  const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('A card that can be tapped'))
                ]))));
  }
}
