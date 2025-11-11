import 'package:flutter/material.dart';
import 'widgets/barra_progreso.dart';

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
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              Principal(),
              SizedBox(height: 15),
              Experiencia(),
              SizedBox(height: 15),
              Educacion(),
              SizedBox(height: 15),
              Tecnologias(),
            ],
          ),
        ),
      ),
    );
  }
}

var experiencia = [
  {'puesto': 'Desarrollador de Software', 'empresa': 'Clúster TIC Galicia'},
  {'puesto': 'Programador Web', 'empresa': 'ALSERNET'},
  {'puesto': 'Propietario Cervecería', 'empresa': 'Folks'},
  {'puesto': 'Asistente de Producción', 'empresa': 'SDI Media'},
  {'puesto': 'Mozo de Almacén', 'empresa': 'ZARA Logística'},
];

var educacion = [
  {
    'titulo': 'FP Superior Dual en Desarrollo de Aplicaciones Multiplataforma',
    'empresa': 'IES Fernando Wirtz',
  },
  {
    'titulo':
        'Certificado de Profesionalidad de Programación de Sistemas Informáticos',
    'empresa': 'Fundación Nortempo',
  },
  {
    'titulo': 'Especialista en guion, dirección y producción',
    'empresa': 'Campus Training',
  },
  {
    'titulo': 'Técnico en Publicidad',
    'empresa': 'Centro de Nuevas Profesiones',
  },
];

var tecnologias = [
  {'nombre': 'Java', 'nivel': 0.75},
  {'nombre': 'Spring Boot', 'nivel': 0.15},
  {'nombre': 'JavaScript', 'nivel': 0.10},
  {'nombre': 'TypeScript', 'nivel': 0.10},
  {'nombre': 'Angular', 'nivel': 0.10},
  {'nombre': 'HTML/CSS', 'nivel': 0.65},
  {'nombre': 'Flutter', 'nivel': 0.10},
  {'nombre': 'Dart', 'nivel': 0.10},
  {'nombre': 'Kotlin', 'nivel': 0.10},
  {'nombre': 'Jetpack Compose', 'nivel': 0.05},
  {'nombre': 'SQL', 'nivel': 0.75},
  {'nombre': 'GitHub', 'nivel': 0.70},
];

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  String estadoSeleccionado = 'Disponible';

  Color get colorEstado {
    return estadoSeleccionado == 'Disponible' ? Colors.green : Colors.red;
  }

  IconData get iconoEstado {
    return estadoSeleccionado == 'Disponible'
        ? Icons.check_circle
        : Icons.remove_circle;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 237, 225, 253),
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/avatar.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5, right: 5),
                      //Contenedor para el fondo blanco del icono
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          iconoEstado,
                          color: colorEstado,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Alex Barbeito Domínguez',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Programador',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(179, 0, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 217, 255, 250),
                    border: Border.all(color: Colors.grey),
                  ),
                  width: 200,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: DropdownButton<String>(
                    dropdownColor: const Color.fromARGB(255, 217, 255, 250),
                    value: estadoSeleccionado,
                    isExpanded: true,
                    underline: const SizedBox(),
                    icon: const Icon(Icons.arrow_drop_down, size: 30),
                    items: const [
                      DropdownMenuItem(
                        value: 'Disponible',
                        child: Text('Buscando Trabajo'),
                      ),
                      DropdownMenuItem(
                        value: 'Ocupado',
                        child: Text('Ocupado'),
                      ),
                    ],
                    onChanged: (nuevoValor) {
                      setState(() {
                        estadoSeleccionado = nuevoValor!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Experiencia extends StatelessWidget {
  const Experiencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 237, 225, 253),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Experiencia Profesional',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: experiencia.length,
            itemBuilder: (context, index) {
              final exp = experiencia[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                //RichText para poder poner en negrita
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(179, 0, 0, 0),
                    ),
                    //Colección de tipo TextSpan para mezclar estilos
                    children: <TextSpan>[
                      TextSpan(text: '• ${exp['puesto']} - '),
                      TextSpan(
                        text: exp['empresa'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Educacion extends StatelessWidget {
  const Educacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 237, 225, 253),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Educación',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: educacion.length,
            itemBuilder: (context, index) {
              final edu = educacion[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(179, 0, 0, 0),
                    ),
                    //Colección de tipo TextSpan para mezclar estilos
                    children: <TextSpan>[
                      TextSpan(text: '• ${edu['titulo']} - '),
                      TextSpan(
                        text: edu['empresa'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Tecnologias extends StatelessWidget {
  const Tecnologias({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 237, 225, 253),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Tecnologías',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: tecnologias.length,
            itemBuilder: (context, index) {
              final tec = tecnologias[index];
              return BarraProgresoTecnologia(
                tecnologia: tec['nombre'] as String,
                nivel: tec['nivel'] as double,
              );
            },
          ),
        ],
      ),
    );
  }
}
