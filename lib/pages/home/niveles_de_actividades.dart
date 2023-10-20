import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:untitled/pages/home/grabar_instrucciones.dart';

import 'audios.dart';


class niveles_actividades extends StatelessWidget {
  String texto_dictar="Realizamos las siguientes actividades";
  String audioUrl="assets/audios/actividades.mp3";
  ValueNotifier<bool> isAudioPlaying = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            sonido_grabar(
                texto_grabar: texto_dictar,
              audioPath: audioUrl,
            ),
            AutoPlayAudioWidget(
                audioPath: audioUrl,
            ),
            SizedBox(width: 8),
            Image.asset(
              'assets/img/logo.png',
              width: 60,
              height: 60,
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/fondoNM.png'),
              fit: BoxFit.cover
          ),
        ),
        child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                StrokeText(
                  text: texto_dictar,
                  strokeWidth: 6,
                  strokeColor: Colors.green,
                  textStyle: TextStyle(
                    fontSize: 38,
                    fontFamily: 'lazydog',
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      IconButton(
                        iconSize: 120,
                        onPressed: (){

                      },
                          icon: Image(
                            image: AssetImage(
                                "assets/img/alimento.png",
                            ),
                          ),
                      ),
                    IconButton(
                      iconSize: 120,
                      onPressed: (){

                      },
                      icon: Image(
                        image: AssetImage(
                            "assets/img/bebidas.png"
                        ),
                      ),
                    ),
                    IconButton(
                      iconSize: 120,
                      onPressed: (){

                      },
                      icon: Image(
                        image: AssetImage(
                            "assets/img/acciones.png"
                        ),
                      ),
                    ),
                    IconButton(
                      iconSize: 120,
                      onPressed: (){

                      },
                      icon: Image(
                        image: AssetImage(
                            "assets/img/partes del cuerpo.png"
                        ),
                      ),
                    ),
                    IconButton(
                      iconSize: 120,
                      onPressed: (){

                      },
                      icon: Image(
                        image: AssetImage(
                            "assets/img/prendas.png"
                        ),
                      ),
                    ),
                  ],
                ),
              ],
        ),
      ),
    );
  }
}
