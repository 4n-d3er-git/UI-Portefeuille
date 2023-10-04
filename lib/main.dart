import 'package:flutter/material.dart';

void main(){
  runApp(const MonApp()); 
}

class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Connexion(),
    );
  }
}

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: [Color(0xFFF3CDD8), Color(0xFFF6DEE7)]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(alignment: Alignment.topRight, child: Image.asset("assets/signin.png", width: 260, fit: BoxFit.cover, height: 340)),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text('Bienvenue', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

                 const Padding(padding: EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 16)),
                  Container(
                    padding: EdgeInsets.only(left: 24, right: 16, top: 16, bottom: 16),
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25)), color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset("assets/googleicon.png", color: Colors.blue, width: 20, height: 20),
                        Text("Se connecter avec Google", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                 const Padding(padding: EdgeInsets.all(16),),
               const   Text.rich(
                    TextSpan(
                      text: "Avez-vous déjà un compte ?",
                      style: TextStyle( color: Color(0xFF212041)),
                      children: <TextSpan>[
                        TextSpan(text: "Connexion", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFEBA791), fontSize: 16)),
                      ],
                    ),
                  ),
                  const Center()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
