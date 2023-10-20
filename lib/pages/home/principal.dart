import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:untitled/pages/home/actividades_rutina_diaria.dart';
import 'package:untitled/pages/home/audios.dart';
import 'package:untitled/pages/home/grabar_instrucciones.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/pages/home/info_actividades.dart';
import 'package:untitled/pages/home/niveles_de_actividades.dart';
import 'package:untitled/utils/colors.dart' as utils;

class principal extends StatefulWidget {
  @override
  _principalState createState() => _principalState();
}

class _principalState extends State<principal> {
  double _volume = 0.5;// Agrega _volume como una propiedad y establece el valor inicial
  String Texto_Menu = "Este es el menu";
  String audioUrl = 'assets/audios/menu.mp3';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            sonido_grabar(
                texto_grabar: Texto_Menu,
              audioPath: audioUrl,
            ),
            AutoPlayAudioWidget(
                audioPath: audioUrl,
            ),
            SizedBox(width: 300),
            info_pictogramas(img1: "assets/img/alimento.png"),
            Image.asset(
              'assets/img/logo.png',
              width: 60,
              height: 60,
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/fondoNM.png'),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          child: ListWheelScrollView(
            itemExtent: 300,
            diameterRatio: 2.5,
            offAxisFraction: 0.5,
            perspective: 0.003,
            children: [
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => niveles_actividades(),
                              ),
                            );
                          },
                          icon: Image.asset('assets/img/aprendizaje.png'),
                          iconSize: 250,
                        ),
                        StrokeText(
                          text: 'ACTIVIDADES',
                          strokeWidth: 4,
                          textStyle: TextStyle(
                            fontFamily: 'lazydog',
                            fontSize: 38,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => actividades_rutina_diaria()));
                          },
                          icon: Image.asset('assets/img/rutinadiaria.png'),
                          iconSize: 250,
                        ),
                        StrokeText(
                          text: 'MI RUTINA DIARIA',
                          strokeWidth: 4,
                          textStyle: TextStyle(
                            fontFamily: 'lazydog',
                            fontSize: 38,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {

                          },
                          icon: Image.asset('assets/img/avances.png'),
                          iconSize: 300,
                        ),
                        StrokeText(
                          text: 'AVANCES',
                          strokeWidth: 4,
                          textStyle: TextStyle(
                            fontFamily: 'lazydog',
                            fontSize: 38,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
