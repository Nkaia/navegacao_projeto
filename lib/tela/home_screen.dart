import 'package:flutter/material.dart';
import 'package:testando_navegacao/app_rotas/navegacao.dart';

class OutraPage extends StatefulWidget {
  const OutraPage({Key? key}) : super(key: key);

  @override
  State<OutraPage> createState() => _OutraPageState();
}

class _OutraPageState extends State<OutraPage> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as User;
    print(arguments);
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('${arguments.name}')),
    );
  }
}
