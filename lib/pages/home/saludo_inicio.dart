import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:untitled/pages/home/grabar_instrucciones.dart';
import 'package:untitled/pages/home/principal.dart';
import 'package:untitled/utils/colors.dart' as utils;

class saludo extends StatefulWidget {
  @override
  _saludoState createState() => _saludoState();
}

class _saludoState extends State<saludo> {
  double _volume = 0.5;
  String texto_guiado="Bienvenido, @";// Agrega _volume como una propiedad y establece el valor inicial
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => principal()));
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height ,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/fondoNM.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    sonido_grabar(
                        texto_grabar: texto_guiado
                    ),
                    StrokeText(
                      text: texto_guiado,
                      strokeWidth: 6,
                      strokeColor: Colors.indigo,
                      textStyle: TextStyle(
                        fontSize: 38,
                        fontFamily: 'lazydog',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}