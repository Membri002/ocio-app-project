import 'package:flutter/material.dart';

void main() {
  runApp(const OcioApp());
}

class OcioApp extends StatelessWidget {
  const OcioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ocio App',
      theme: ThemeData(
        // Aquí defines el "look & feel" global (como un CSS global)
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // El Scaffold es como el "body" de tu página, da la estructura básica
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // El Logo de tu App
            const Icon(Icons.nightlife, size: 100, color: Colors.deepPurple),
            const SizedBox(height: 20),
            const Text(
              "Bienvenido a OcioApp",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            
            // Campo de Usuario (como un <input type="text">)
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),
            
            // Campo de Contraseña (como un <input type="password">)
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 30),
            
            // Botón de Entrar
            SizedBox(
              width: double.infinity, // Ocupa todo el ancho disponible
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  print("Intento de login...");
                },
                child: const Text("Entrar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}