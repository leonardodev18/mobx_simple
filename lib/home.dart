import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_aula1/controller.dart';

class MyHomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              onChanged: controller.mudarNome,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Sobrenome'),
              onChanged: controller.mudarSobrenome,
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                print(controller.nomecompleto);
                return Text('${controller.nomecompleto}');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //controller.counter++;
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
