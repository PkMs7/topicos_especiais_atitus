import 'package:aula_3/logo_team.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

//StatelessWidget é um estado utilizado que não será mudado
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Color _backScaffold = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Root widget
      home: Scaffold(
        backgroundColor: _backScaffold,
        appBar: AppBar(
            title: const Text('My Home Page'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  const Text('Qual time se classifica hoje?'),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildButton(
                        label: 'FLA', 
                        NewColor: Colors.blue),
                      _buildButton(
                        label: 'INT', 
                        NewColor: Colors.red),
                  ],
                  ),
                  LogoTeam()
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildButton({required String label, required Color NewColor}) => ElevatedButton(
    onPressed: () { 
        setState(() {
        _backScaffold = NewColor;
      });
    },
    child: Text(label),
  );
}