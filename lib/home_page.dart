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
                child: Image.network(
                  'https://news.microsoft.com/wp-content/uploads/prod/sites/42/2020/09/MS_Penguin-Counting-Story_1900x800-1600x674-1-960x629.jpg',
                  fit: BoxFit.cover,
                )),
            Container(
              color: Colors.orange,
              height: 75,
              width: 75,
            ),
            Container(
              color: Colors.blue,
              height: 35,
              width: 35,
            ),
          ],
        ),
      ),
    );
  }
}
