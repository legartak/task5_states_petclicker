import 'package:flutter/material.dart';
import 'package:task5_states_petclicker/widgets/custom_drawer.dart';
import 'package:task5_states_petclicker/widgets/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 5 PetClicker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void changeFlag() {
    setState(() {
      flag = flag ? false : true;
    });
  }

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PetClicker Home Page"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: CustomDrawer(callback: changeFlag,),
      body: Column(
        children: [
          const MainPage(),
          flag ? Image.asset('images/rickroll-roll.gif') : const SizedBox(height: 0,),
        ],
      ),
    );
  }
}
