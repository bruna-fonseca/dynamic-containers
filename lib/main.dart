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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dynamic Containers'),
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
  Color currentColor = Colors.black;
  String colorTitle = "Cor";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Amarelo"),
              onTap: () {
                setState(() {
                  currentColor = Colors.yellow;
                  colorTitle = "Amarelo";
                });
              },
            ),
            ListTile(
              title: Text("Vermelho"),
              onTap: () {
                setState(() {
                  currentColor = Colors.red;
                  colorTitle = "Vermelho";
                });
              },
            ),
            ListTile(
              title: Text("Roxo"),
              onTap: () {
                setState(() {
                  currentColor = Colors.purple;
                  colorTitle = "Roxo";
                });
              },
            ),
            ListTile(
              title: Text("Azul"),
              onTap: () {
                setState(() {
                  currentColor = Colors.blue;
                  colorTitle = "Azul";
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 height: 150,
                 width: 150,
                 decoration: BoxDecoration(
                     color: currentColor
                 ),
                 child: Center(
                     child: Text(
                       colorTitle.toString(),
                       style: const TextStyle(
                         fontSize: 20,
                         color: Colors.white,
                       ),
                     )
                 )
               ),
               Container(
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                       color: currentColor
                   ),
                   child: Center(
                       child: Text(
                         colorTitle.toString(),
                         style: const TextStyle(
                           fontSize: 20,
                           color: Colors.white,
                         ),
                       )
                   )
               ),
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                       color: currentColor
                   ),
                   child: Center(
                       child: Text(
                         colorTitle.toString(),
                         style: const TextStyle(
                           fontSize: 20,
                           color: Colors.white,
                         ),
                       )
                   )
               ),
               Container(
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                       color: currentColor
                   ),
                   child: Center(
                       child: Text(
                         colorTitle.toString(),
                         style: const TextStyle(
                           fontSize: 20,
                           color: Colors.white,
                         ),
                       )
                   )
               ),
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                       color: currentColor
                   ),
                   child: Center(
                       child: Text(
                         colorTitle.toString(),
                         style: const TextStyle(
                           fontSize: 20,
                           color: Colors.white,
                         ),
                       )
                   )
               ),
               Container(
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                       color: currentColor
                   ),
                   child: Center(
                       child: Text(
                         colorTitle.toString(),
                         style: const TextStyle(
                           fontSize: 20,
                           color: Colors.white,
                         ),
                       )
                   )
               ),
             ],
           ),
         ],
        ),
      )
    );
  }
}
