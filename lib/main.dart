import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(  // Ajout de SingleChildScrollView ici
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Hello',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Text widget with "Bonjour tout le monde"
              const Text(
                'Bonjour tout le monde',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 20),

              // Row with star icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star, color: Colors.green),
                  Icon(Icons.star, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 20),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Flutter'),
                  Text('est'),
                  Text('Génial!'),
                ],
              ),
              const SizedBox(height: 20),

              // Image from assets
              Image.asset(
                'assets/images/photo.jpg',
                width: 300,
                height: 230,
              ),
              const SizedBox(height: 20),

              // ListTile items
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Alice'),
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Bob'),
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Charlie'),
              ),

              ElevatedButton(
                onPressed: () {
                  print('Bouton appuyé');
                },
                child: const Text('Cliquez ici'),
              ),

              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Texte avec un padding de 16.0'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
