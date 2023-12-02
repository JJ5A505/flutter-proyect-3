import 'package:flutter/material.dart';
import 'counter.dart';
import 'image_carousel.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  bool _isFavorited = true;
  String selectedSize = '25cm';
  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueGrey,
          leading: Row(
            children: <Widget>[
              const SizedBox(
                width: 8.0,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.navigate_before,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 25.0,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CarouselWithIndicatorDemo(),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color.fromARGB(255, 231, 71, 23),
                            Colors.white
                          ]),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Jordan Air 1',
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text('Pares'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          CounterDesign(),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Descripcion del producto',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            'Los Jordan Air 1, icónicos y culturales, ofrecen más que zapatillas.'
                            ' La distintiva caja Jumpman incluye detalles exclusivos y, como obsequio, un llavero. '
                            'Cada par cuenta una historia, fusionando moda y autenticidad en una experiencia única.',
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 17.0),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: const BorderSide(color: Colors.white),
                                ),
                                height: 70.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    elevation: 0.0,
                                  ),
                                  onPressed: _toggleFavorite,
                                  child: Icon(
                                    _isFavorited
                                        ? Icons.favorite_border
                                        : Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                height: 70.0,
                                minWidth: 260.0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Agregar a la bolsa',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
