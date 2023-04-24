import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  void clique() {
    print('Apertou o botão');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Aplicativo'),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                style: TextStyle(fontSize: 20.0),
                decoration: InputDecoration(
                  labelText: 'E-Mail',
                  hintText: 'exemplo@exemplo.com',
                  border: InputBorder.none,
                  errorText: null,
                ),
                obscureText: false,
              ),
              SizedBox(height: 50,),
              const TextField(
                style: TextStyle(fontSize: 20.0),
                decoration: InputDecoration(
                  labelText: 'Senha',
                  //hintText: 'Senha',
                  border: OutlineInputBorder(borderSide: BorderSide(width: 5)),
                  errorText: null,
                ),
                obscureText: true,
                keyboardType: TextInputType.datetime,
              ),

              SizedBox(height: 50,),
              ElevatedButton(
                onPressed: clique,
                child: const Text(
                  'OK',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
