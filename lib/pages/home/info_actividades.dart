import 'package:untitled/utils/colors.dart' as utils;
import 'package:flutter/material.dart';

class info_pictogramas extends StatelessWidget{
  const info_pictogramas({required this.img1}): super();

  final String img1;

  Widget build(BuildContext context){
    return IconButton(
        onPressed: (){
            showDialog(
                context: context,
                builder: (BuildContext context){
                 return AlertDialog(
                      title: Text("Pictogramas"),
                   content: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                          Container(
                            width: 500,
                            height: 200,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Column(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black, width: 2.0), // Configura el borde negro
                                        ),
                                        child: Image(
                                          image: AssetImage("assets/img/alimento.png"),
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black, width: 2.0), // Configura el borde negro
                                        ),
                                        child: Image(
                                          image: AssetImage("assets/img/bebidas.png"),
                                        ),
                                      )
                                    ],
                                ),
                                Column(

                                ),
                              ],
                            ),
                          ),
                     ],
                   ),
                 );
                }
            );
    },
        icon: Icon(
          Icons.info,
          color: Colors.white,
          size: 30,
        )
    );
  }
}