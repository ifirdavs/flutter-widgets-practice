import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Practice',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: "Roboto"),
      home: const Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HolaWidget(message: 'Hola! Welcome aboard!'),
                // HolaWidget(message: 'Hola! Bienvenidos a bordo!'),
                Expanded(child: CounterWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Stateless Widget
class HolaWidget extends StatelessWidget {
  final String message;

  const HolaWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        message,
        style: const TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}

// Stateful Widget
class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Tap Challenge:',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        ElevatedButton(
          onPressed: _increment,
          style: ButtonStyle(
              minimumSize:
                  MaterialStateProperty.all<Size>(const Size(150, 60))),
          child: const Text('Tap me', style: TextStyle(fontSize: 25)),
        ),
        const SizedBox(
          height: 110,
        ),
        ElevatedButton(
          onPressed: _reset,
          style: ButtonStyle(
              minimumSize:
                  MaterialStateProperty.all<Size>(const Size(150, 60))),
          child: const Text('Reset', style: TextStyle(fontSize: 25)),
        ),
      ],
    );
  }
}
