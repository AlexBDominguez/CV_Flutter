
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currículum Vitae')),
      body: const Padding( 
        padding: EdgeInsets.all(16.0), // Agregamos algo de padding para que se vea mejor
        child: ColumnaIzquierda(),
    ));
  }    
}

class ColumnaIzquierda extends StatelessWidget {
  const ColumnaIzquierda({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/avatar.jpg'),
        ),
        const SizedBox(height: 16),
        const Text(
          'Alex Barbeito Domínguez',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),        
    )]);
  } 
}