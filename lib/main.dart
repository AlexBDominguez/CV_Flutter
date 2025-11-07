import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 252, 252),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Currículum Vitae',
          style: TextStyle(
            color: Colors.white,
          ),

        ),        
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: const Padding(
        padding: EdgeInsets.all(
          16.0,
        ),
        child: Column(
          children: [
            PrimerBloque(),
            SizedBox(height: 15),
            SegundoBloque(),
          ],
        ),
      ),
    );
  }
}

class PrimerBloque extends StatelessWidget {
  const PrimerBloque({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 127, 181, 231),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/avatar.jpg'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Alexandre Barbeito',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Programador',
                style: TextStyle(fontSize: 16, color: Color.fromARGB(179, 0, 0, 0)),
              ),
            ]
            ,
          ),
        ),
      ],      
    );
  }
}

var listaExperiencia = [
  'Desarrollador de Software',
  'Programador Web',
  'Propietario Cervecería',
  'Asistente de Producción',
  'Mozo de Almacén',
];


class SegundoBloque extends StatelessWidget {
  const SegundoBloque({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 127, 181, 231),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [              
              const SizedBox(height: 16),
              const Text(
                'Experiencia Profesional',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 8),
              for(var puesto in listaExperiencia) 
              Text(
                puesto,
                style: TextStyle(fontSize: 16, color: const Color.fromARGB(179, 0, 0, 0)),                
              ),
            ]
          ),
        ),
      ],
    );
    
  }
}