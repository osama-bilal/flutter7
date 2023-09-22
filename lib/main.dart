import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slant & stack Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
          useMaterial3: true,
          primaryColor: Colors.blue.shade900),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Todo Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.line_weight),
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(widget.title),
        ),
        body: Container(
          color: Colors.blue.shade900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${TimeOfDay.now().hourOfPeriod}:${TimeOfDay.now().minute}${TimeOfDay.now().period.name.toUpperCase()}",
                        style:
                            const TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      const Text("The Current time",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                )
              ]),
              Container(
                // color: Colors.blue,
                margin: const EdgeInsets.only(top: 10, bottom: 0),
                height: MediaQuery.of(context).size.height - 220,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
              )
            ],
          ),
        ));
  }
}
