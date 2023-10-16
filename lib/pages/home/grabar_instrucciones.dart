import 'package:untitled/utils/colors.dart' as utils;
import 'package:flutter/material.dart';

class sonido_grabar extends StatelessWidget{
    const sonido_grabar({required this.texto_grabar}) :super();

    final String texto_grabar;

    Widget build(BuildContext context){
      double _volume = 0.5;
      return IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Ajustar Volumen"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Slider(
                      value: _volume,
                      onChanged: (double newVolume) {

                      },
                      min: 0.0,
                      max: 1.0,
                      divisions: 10,
                    ),
                  ],
                ),
                actions: [
                  Text("Volumen: ${(_volume * 100).toInt()}%"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cerrar"),
                  ),
                  IconButton(onPressed:(){
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context){
                          return SizedBox(
                            height: 500,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "Repite el siguiente texto:",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,

                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  texto_grabar,
                                  style: TextStyle(
                                    fontSize: 20,

                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    ElevatedButton(
                                      child: const Text("Grabar"),
                                      onPressed: (){

                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ElevatedButton(
                                      child: const Text("Pausar"),
                                      onPressed: (){

                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ElevatedButton(
                                      child: const Text("Guardar"),
                                      onPressed: (){

                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ElevatedButton(
                                      child: const Text("cerrar"),
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }
                    );
                  },
                      icon: Icon(
                        Icons.mic_rounded,
                        color: utils.Colors.azulitoArriba,
                      )
                  ),
                ],
              );
            },
          );
        },
        icon: Image.asset('assets/img/iconobocina.gif'),
        iconSize: 70,
      );
    }

}