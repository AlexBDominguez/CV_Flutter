import 'package:flutter/material.dart';

class BarraProgresoTecnologia extends StatelessWidget {
  final String tecnologia;
  final double nivel; 

  const BarraProgresoTecnologia({
    super.key,
    required this.tecnologia,
    required this.nivel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tecnologia,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(height: 4),
          // Barra de progreso
          LinearProgressIndicator(
            value: nivel,
            backgroundColor: const Color.fromARGB(255, 204, 194, 219),
            valueColor: const AlwaysStoppedAnimation<Color>(
              //AlwaysStoppedAnimationColor para mantener un color constante
              //ya que LinearProgressIndicator usa una animación por defecto
              Color.fromARGB(255, 98, 0, 238), 
            ),
            minHeight: 8,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
    );
  }
}