import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // title: 'Rotas',
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int actualIndex = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegação Teste'),
      ),
      body: Row(
        children: [
          Container(
            height: double.maxFinite,
            width: 100,
            color: Colors.blue,
            child: Column(children: [
              TextButton(
                  onPressed: () {
                    controller.jumpToPage(0);
                  },
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              TextButton(
                  onPressed: () {
                    controller.jumpToPage(1);
                  },
                  child:
                      Text("Pagina 2", style: TextStyle(color: Colors.white))),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/outra",
                        arguments: User(name: "Usuario"));
                  },
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
            ]),
          ),
          Expanded(
            child: PageView(
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              scrollBehavior: ScrollBehavior(),
              children: const [
                FirstScreen(),
                SecondScreen(),
                ThirdScreen(),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: actualIndex,
      //     onTap: (value) {
      //       setState(() {
      //         actualIndex = value;
      //         controller.animateToPage(value,
      //             duration: const Duration(milliseconds: 300),
      //             curve: Curves.easeIn);
      //       });
      //     },
      //     items: const [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
      //       BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Help'),
      //     ]),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Pagina icinial'),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text('Pagina Dois'),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text('Pagina de Ajuda'),
      ),
    );
  }
}

class User {
  final String name;

  User({required this.name});
}
