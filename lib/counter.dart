import 'package:flutter/material.dart';

class CounterDesign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterDesign();
  }
}

class _CounterDesign extends State<CounterDesign> {
  int _n = 0;
  int _amt = 0;
  void add() {
    setState(() {
      _n++;
      _amt = _amt + 1550;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
      _amt = _amt - 1550;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 140.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.remove_circle,
                  color: Colors.black,
                ),
                onPressed: () {
                  minus();
                },
              ),
              const SizedBox(
                width: 10.0,
              ),
               Text('$_n', style: new TextStyle(fontSize: 30.0)),
              const SizedBox(
                width: 10.0,
              ),
               IconButton(
                icon: const Icon(
                  Icons.add_circle,
                  color: Colors.black,
                ),
                onPressed: () {
                  add();
                },
              ),
              const SizedBox(
                width: 20.0,
              ),
            ],
          ),
        ),
       const  SizedBox(
          width: 80.0,
        ),
        Container(
            child: Text(
          ' $_amt Dls',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        )),
      ],
    );
  }
}