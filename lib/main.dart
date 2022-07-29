import 'package:flutter/material.dart';
import 'package:http/http.dart';

// ROOT WIDGET
//main()
// void main() {
//   runApp(
//     const Directionality( textDirection: TextDirection.rtl,
//       child: Center(
//         child: Text(
//           'Hello world',
//           textDirection: TextDirection.ltr,
//         ),
//       ),
//     ),
//   );
// }

//STATELESS WIDGET
void main() {
  runApp(MaterialApp(
    title: "Flutter Demo",
    theme: ThemeData(
      primaryColor:
          Colors.blue, //this gets overridden by the styles in Scaffold
    ),
    home: Homepage(),
  ));
}

// class MyStatelessWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Text("Stateless");
//   }
// }

// STATEFUL WIDGET (widgets that
/*class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidget createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Homepage(),
    );
    // return Container();
    return const Text(" Stateful");
  }
}*/

// hotkey: stful
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _counter = 0;
  int _curIndex = 0;

  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return const Center(child: Text("Homepage"));
    // return Column(
    //   children: const <Widget>[
    //     Text('Line 1'),
    //     Text('Line 2'),
    //   ],
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text('COUNTER APP'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Line 1',
            ),
            const Text('Line 2'),
            Text('Count is $_counter'),
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //     backgroundColor: Colors.amber,
      //     foregroundColor: Colors.black,
      //     onPressed: _incrementCounter,
      //     child: const Icon(Icons.add)),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
              onPressed: _incrementCounter,
              child: const Icon(Icons.add)),
          FloatingActionButton(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
              onPressed: _decrementCounter,
              child: const Icon(Icons.remove)),
          FloatingActionButton(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
              onPressed: _resetCounter,
              child: const Icon(Icons.refresh)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "search",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.phone,
              ),
              label: "contact"),
        ],
        currentIndex: _curIndex,
      ),
    );
  }
}
