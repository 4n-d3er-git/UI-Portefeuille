import 'package:flutter/material.dart';

void main(){
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pratique(),
    );
  }
}

class Pratique extends StatefulWidget {
  const Pratique({super.key});

  @override
  State<Pratique> createState() => _PratiqueState();
}

class _PratiqueState extends State<Pratique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        title: Text("Logo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(child: Padding(padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Bonjour ANDERSON", style: TextStyle(color: Colors.blueAccent, fontSize: 30),),
          Text("GOUMOU !", style: TextStyle(color: Colors.blueAccent, fontSize: 30),),
         const SizedBox(height: 20,),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              height: 50,
              child: const Row(
                children: <Widget>[
                  Text("Logo", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                  Text("123 456 789", style: TextStyle(fontSize: 25),)
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [
                Colors.blueAccent,
                Colors.blue.shade500,
                Colors.deepPurple,
                Colors.blue.shade700,
                Colors.blue.shade800,

              ]),
              
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.key, color: Colors.white,),
                TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => Accueil())); },
                child: Text("CONNECTEZ-VOUS", style: TextStyle(color: Colors.white, fontSize: 25),),)
              ],
            ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Icon(Icons.arrow_back_ios, size: 20, color: Colors.blueAccent,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("UTILISEZ VOTRE NUMERO DE", style: TextStyle(color: Colors.blueAccent),),
                  Text("TELEPHONE", style: TextStyle(color: Colors.blueAccent),)
                ],
              )
            ],
          ),
          SizedBox(height: 180),
          Divider(),
          Container(
            decoration: BoxDecoration(color: Colors.grey[300]),
            height: 89,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("CONDITIONS"),
                          Text("GENERALE")
                        ],
                      ),
                      Column(
                        children: [
                          Text("AIDE &"),
                          Text("CONTACT")
                        ],
                      )
                    ],
                  ),
                const  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.copyright, color: Colors.grey[500], size: 15,),
                  Text("2023 PayCard SA", style: TextStyle(fontSize: 18, color: Colors.grey[500]),)
                    ],
                  )
                ],
                
              ),
            ),
          )
        ],
        
      ),
      
      ),
      
      ),
    );
  }
}

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.grey[200],
        title: Text("ANDERSON GOUMOU", style: TextStyle(color: Colors.black),),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Badge(
              label: Text("2"),
              offset: Offset.zero,
              child: Icon(Icons.notifications_none_outlined, color: Colors.black, size: 25,),
            ),
          ),
          Icon(Icons.person_2_outlined, color: Colors.black,),
          SizedBox(width: 10,)
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(child: Padding( padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: Column(
        children: [

          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(48)
            ),
            child: Row(
              children: [
                Icon(Icons.credit_card,color: Colors.blueAccent,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Text("MESRSI",),
                Icon(Icons.arrow_forward_ios, size: 15,),
                Icon(Icons.school,  color: Colors.blueAccent, size: 18,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Expanded(child: Text("Université Gamal Abdel Nasser de Conakry", style: TextStyle(fontSize: 15),))
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: 400,
            height: 200,
            child: Card(
              color: Colors.white,
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Votre solde", style: TextStyle(fontSize: 19),),
                    SizedBox(height: 15,),
                    Text("1 700 GNF", style: TextStyle(fontSize: 23, color: Colors.blueAccent),),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.warning_amber_outlined, color: Colors.yellow.shade700, size: 33,),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                        Expanded(child: Text("Votre solde est faible, pensez à récharger votre compte !", 
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.yellow.shade700
                        ),))
                      ],
                    ),
                    Divider(thickness: 2,),
                    Row(children: [
                      Icon(Icons.shopify, color: Colors.redAccent, size: 35,),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                      Text("0 Pts", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, 
                      color: Colors.redAccent),),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 90)),
                      Icon(Icons.copy_rounded, color: Colors.redAccent, size: 25,)
                    ],)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 250,
            width: 400,
            child: Card(
              child: Padding(padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nouvelle opération", style: TextStyle(fontSize: 19),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade800,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.shopping_cart, size: 28, color: Colors.white,),
                          ),
                          Text("Payer"),
                          SizedBox(height: 8,),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.phone_iphone_sharp, size: 28, color: Colors.white,),
                          ),
                          Text("Crédit"),
                          Text("téléphonique")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.yellow.shade600,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.send_to_mobile_outlined, size: 28, color: Colors.white,),
                          ),
                          Text("Transferer"),
                          SizedBox(height: 8,),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.app_shortcut_outlined, size: 28, color: Colors.white,),
                          ),
                          Text("Services & Appli"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent.shade700,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.downloading_outlined, size: 28, color: Colors.white,),
                          ),
                          Text("Recharger"),
                          SizedBox(height: 8,),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.map, size: 28, color: Colors.white,),
                          ),
                          Text("Ou utiliser ?"),
                        ],
                      )
                    ],
                  )
                ],
              ),
              ),
            ),
          )
        ],
      ),
      )),
    );
  }
}
