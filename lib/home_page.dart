import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();

  final list = <String>[];

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
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/imgs/background.jpg',
                  fit: BoxFit.cover,
                )),
            Container(
              color: Colors.black.withOpacity(0.6),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    style: FlutterLogoStyle.horizontal,
                    size: 150,
                    textColor: Colors.white,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Entrar no app'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
