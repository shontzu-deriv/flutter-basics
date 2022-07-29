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
      primaryColor: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    // return Container();
    return const Center(child: Text("Homepage"));
    //TODO
    // return const Center(child: Column(
    //   children: const <Widget> [],
    // ));
  }
}
