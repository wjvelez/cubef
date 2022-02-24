import 'package:cubef/cubef.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubef Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

const double _width = 280.0;
const double _height = 280.0;

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<CubefState> cubefKey = GlobalKey<CubefState>();

  void rollDown() {
    cubefKey.currentState!.rollDown();
  }

  void rollUp() {
    cubefKey.currentState!.rollUp();
  }

  void rollLeft() {
    cubefKey.currentState!.rollLeft();
  }

  void rollRight() {
    cubefKey.currentState!.rollRight();
  }

  List<Widget> sides = [
    const SideContainer(label: '1', color: Colors.indigo),
    SideContainer(color: Colors.green[500]!, label: '2'),
    SideContainer(color: Colors.orange[500]!, label: '3'),
    SideContainer(color: Colors.blue[500]!, label: '4'),
    SideContainer(color: Colors.pink[400]!, label: '5'),
    const SideContainer(color: Colors.purple, label: '6')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubef Widget Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Cubef(
            key: cubefKey,
            animationDuration: 2000,
            sides: sides,
            width: _width,
            height: _height,
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: rollUp,
                        child: const Text('Roll Up'),
                      ),
                      ElevatedButton(
                        onPressed: rollDown,
                        child: const Text('Roll Down'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: rollLeft,
                        child: const Text('Roll Left'),
                      ),
                      ElevatedButton(
                        onPressed: rollRight,
                        child: const Text('Roll Right'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SideContainer extends StatelessWidget {
  const SideContainer({
    Key? key,
    required this.label,
    this.color = Colors.blue,
  }) : super(key: key);

  final String label;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 26,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
