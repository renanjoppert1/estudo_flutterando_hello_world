import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  // Chama quando construído
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // Chama quando destruído
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final names = ['João', 'Maria', 'Joaquim', 'Renan'];

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        // Estrutura para fazer listagem usando arrays
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text('${names[index]}'));
          },
        ),
      ),
    );
  }
}
